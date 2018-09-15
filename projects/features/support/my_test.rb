require 'test/unit'
require 'selenium-webdriver'
require './projects/features/page_objects/Upwork.rb'


class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.


  def setup


    @browser_value = 'firefox'

    #define driver for firefox webdriver
    # Tested on Mac with Firefox, Given chrome Option for later integration if any

    if(@browser_value == "firefox")


      http_client = Selenium::WebDriver::Remote::Http::Default.new

      #capabilities = Selenium::WebDriver::Remote::Capabilities.firefox(accept_insecure_certs: true)
      capabilities = Selenium::WebDriver::Remote::Capabilities.firefox(marionette: true)
      capabilities['acceptInsecureCerts']=true
      profile  = Selenium::WebDriver::Firefox::Profile.new


      #brew install geckodriver
      ENV['PATH'] = File.expand_path File.join(File.dirname(__FILE__), '../../..', 'externalJars/Mac', 'geckodriverv0.21.0', "#{ENV['PATH']}"  )
      #ENV['PATH'] = File.expand_path File.join(File.dirname(__FILE__), '../../..', 'externalJars/Mac', 'geckodriver'  )
      @driver = Selenium::WebDriver.for :firefox, :profile => profile, marionette: true, :desired_capabilities => capabilities, :http_client => http_client

      puts 'Mozilla Firefox Browser Opened ..'
    end

    if(@browser_value == "Chrome")

      http_client = Selenium::WebDriver::Remote::Http::Default.new
      capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(accept_insecure_certs: true)
      profile = Selenium::WebDriver::Chrome::Profile.new

      #MAC
      Selenium::WebDriver::Chrome.driver_path = File.expand_path File.join(File.dirname(__FILE__), '../../..', 'externalJars/Mac', 'chromedriver_mac')
      @driver = Selenium::WebDriver.for :chrome, :profile => profile, :desired_capabilities => capabilities, :http_client => http_client
      puts 'Chrome Browser Opened ..'
    end

    #maximize the window
    @driver.manage.delete_all_cookies
    puts 'Deleting all cookies'
    @driver.manage.window.maximize
    @driver.manage.timeouts.implicit_wait = 30

    #navigate to the upwork site
    @driver.navigate.to "https://www.upwork.com"
    puts 'Navigated to https://www.upwork.com '
  end

  def test_login

    #Created object to Interact with Upwork Page Object
     @Upwork = Upwork.new(@driver)

    #Waiting to Page to be loaded and for Search to visible to Webdriver for 10 seconds
    wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
    wait.until {@Upwork.searchbar}


    #Sending 'QA' work and Pressing Enter in SearchBar
    @Upwork.searchbar.send_keys 'QA'
    @Upwork.searchbar.send_keys :enter
    puts 'QA word is typed into SearchBar '


     puts 'Waiting for Page to Load for searching the results '
     wait.until {@Upwork.headerToApear}

     puts 'Displaying Freelance Skillset'

     #storing info given on the 1st page of search results

    skills_ds = []
     freelance_skillset={}

    size = @Upwork.SectionSize.size

     begin
       for i in (1...size)

         #In case no No skills are available with General pattern, Exception handing is done
         begin
           limit = 4
           for n in (1...limit)
             skills_i = @Upwork.skillsIJ(i,n).text
             skills_ds << skills_i
           end
         rescue Exception => e
         end

         freelance_skillset = {Freelance_Details: {Title: @Upwork.title_fl(i).attribute('title'), Overview: @Upwork.overview(i).text, Skills: skills_ds}}
         skills_ds = []
         puts freelance_skillset, "\n"

       end
       rescue Exception => e
     end

    #Clicking on Freelance photograph

    @Upwork.photo.click
    puts 'Going into Freelancer Profile'


    #Validating the Title and overview Stored in Hash which have been collection above

    assert_equal(freelance_skillset[:Freelance_Details][:Title], @Upwork.matched_name.text)
    puts 'Checking that each attribute value is equal to one of those stored in the structure created'

    assert_equal(freelance_skillset[:Freelance_Details][:Overview], @Upwork.matched_overview.text)
    puts 'Checking whether at least one attribute contains `<keyword>`'

  end

  def teardown
    puts 'Closing the Browser'
    #@driver.quit
    @driver.close
  end


end