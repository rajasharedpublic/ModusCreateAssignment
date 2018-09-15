require 'test/unit'
require 'selenium-webdriver'
require './projects/social/features/page_objects/Upwork.rb'


class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup

    #define driver for firefox webdriver
    # Tested on Mac with Firefox, given chrome option for later integration
    @browser_value = 'firefox'

    if(@browser_value == "firefox")


      http_client = Selenium::WebDriver::Remote::Http::Default.new

      #capabilities        = Selenium::WebDriver::Remote::Capabilities.firefox(accept_insecure_certs: true)
      capabilities = Selenium::WebDriver::Remote::Capabilities.firefox(marionette: true)
      capabilities['acceptInsecureCerts']=true
      profile  = Selenium::WebDriver::Firefox::Profile.new

      #brew install geckodriver
      ENV['PATH'] = File.expand_path File.join(File.dirname(__FILE__), '../../../..', 'externalJars/Mac', 'geckodriver', "#{ENV['PATH']}"  )
      @driver = Selenium::WebDriver.for :firefox, :profile => profile, marionette: true, :desired_capabilities => capabilities, :http_client => http_client

      puts 'Mozilla Firefox Browser Opened ..'
    end

    if(@browser_value == "Chrome")

      http_client = Selenium::WebDriver::Remote::Http::Default.new
      capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(accept_insecure_certs: true)
      profile = Selenium::WebDriver::Chrome::Profile.new

      #MAC
      Selenium::WebDriver::Chrome.driver_path = File.expand_path File.join(File.dirname(__FILE__), '../../../..', 'externalJars/Mac', 'chromedriver_mac')
      @driver = Selenium::WebDriver.for :chrome, :profile => profile, :desired_capabilities => capabilities, :http_client => http_client
      puts 'Chrome Browser Opened ..'
    end


    #maximize the window
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
    wait = Selenium::WebDriver::Wait.new(:timeout => 30) # seconds
    wait.until {@Upwork.searchbar}


    #Sending 'QA' work and Pressing Enter in SearchBar
    @Upwork.searchbar.send_keys 'QA'
    @Upwork.searchbar.send_keys :enter
    puts 'QA word is typed into SearchBar '


     puts 'Waiting for Page to Load for searching the results '
     wait.until {@Upwork.headerToApear}


    #
    # Parse the 1st page with search results:
    #array_of_hashes = []
    #array_of_arrays.each { array_of_hashes << {'@Title' => @Upwork.title_fl.attribute('title'), '@Overview' => @Upwork.overview.text, '@Skills' => @Upwork.skills.text} }





    #puts  array_of_hashes

=begin
    @Title = @Upwork.title_fl(i).attribute('title')
     #puts @Title

     @Overview = @Upwork.overview(i).text

     @Skills = @Upwork.skills(i).text
=end

=begin
    tagHashes = []
    tag_names.each do |tag|
      h = {"tagId" => tag}
      tagHashes << h
    end
=end

    h= {}
    skills_ds = []

    x = [1, 2, 3, 4, 5 , 6, 7, 8 , 9 , 10]
    x.each do |i|

      j = [1, 2, 3, 4]
        j.each do |n|
        skills_i = @Upwork.skillsIJ(i,n).text
        #skills_i = {Skills: @Upwork.skills(i).text}
        skills_ds << skills_i
      end

      freelance_skillset = {Freelance_Details: {Title: @Upwork.title_fl(i).attribute('title'), Overview: @Upwork.overview(i).text, Skills: skills_ds}}
      skills_ds = []

      puts freelance_skillset, "\n"

    end

    #Clicking on Freelance photograph
    @Upwork.photo.click

    #Validating the Title and overview Stored in Hash which have been collection above
    assert_equal(@Title, @Upwork.matched_name.text)

    assert_equal(@Overview, @Upwork.matched_overview.text)


  end

  def teardown
    #quit the driver
    @driver.close
  end


end