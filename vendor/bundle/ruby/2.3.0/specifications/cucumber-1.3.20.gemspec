# -*- encoding: utf-8 -*-
# stub: cucumber 1.3.20 ruby lib

Gem::Specification.new do |s|
  s.name = "cucumber".freeze
  s.version = "1.3.20"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aslak Helles\u{f8}y".freeze]
  s.date = "2015-06-19"
  s.description = "Behaviour Driven Development with elegance and joy".freeze
  s.email = "cukes@googlegroups.com".freeze
  s.executables = ["cucumber".freeze]
  s.files = ["bin/cucumber".freeze]
  s.homepage = "http://cukes.info".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "cucumber-1.3.20".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>.freeze, [">= 2.1.2"])
      s.add_runtime_dependency(%q<diff-lcs>.freeze, [">= 1.1.3"])
      s.add_runtime_dependency(%q<gherkin>.freeze, ["~> 2.12"])
      s.add_runtime_dependency(%q<multi_json>.freeze, ["< 2.0", ">= 1.7.5"])
      s.add_runtime_dependency(%q<multi_test>.freeze, [">= 0.1.2"])
      s.add_development_dependency(%q<aruba>.freeze, ["= 0.5.2"])
      s.add_development_dependency(%q<json>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<nokogiri>.freeze, ["~> 1.5.2"])
      s.add_development_dependency(%q<rake>.freeze, ["< 10.2", ">= 0.9.2"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0.6.2"])
      s.add_development_dependency(%q<spork>.freeze, [">= 1.0.0.rc2"])
      s.add_development_dependency(%q<syntax>.freeze, [">= 1.0.0"])
      s.add_development_dependency(%q<bcat>.freeze, ["~> 0.6.2"])
      s.add_development_dependency(%q<kramdown>.freeze, ["~> 0.14"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.8.0"])
      s.add_development_dependency(%q<capybara>.freeze, ["< 2.1", ">= 1.1.2"])
      s.add_development_dependency(%q<rack-test>.freeze, [">= 0.6.1"])
      s.add_development_dependency(%q<ramaze>.freeze, [">= 0"])
      s.add_development_dependency(%q<sinatra>.freeze, [">= 1.3.2"])
      s.add_development_dependency(%q<webrat>.freeze, [">= 0.7.3"])
      s.add_development_dependency(%q<mime-types>.freeze, ["< 2.0"])
      s.add_development_dependency(%q<rubyzip>.freeze, ["< 1.0"])
    else
      s.add_dependency(%q<builder>.freeze, [">= 2.1.2"])
      s.add_dependency(%q<diff-lcs>.freeze, [">= 1.1.3"])
      s.add_dependency(%q<gherkin>.freeze, ["~> 2.12"])
      s.add_dependency(%q<multi_json>.freeze, ["< 2.0", ">= 1.7.5"])
      s.add_dependency(%q<multi_test>.freeze, [">= 0.1.2"])
      s.add_dependency(%q<aruba>.freeze, ["= 0.5.2"])
      s.add_dependency(%q<json>.freeze, ["~> 1.7"])
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.5.2"])
      s.add_dependency(%q<rake>.freeze, ["< 10.2", ">= 0.9.2"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2"])
      s.add_dependency(%q<test-unit>.freeze, [">= 0"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0.6.2"])
      s.add_dependency(%q<spork>.freeze, [">= 1.0.0.rc2"])
      s.add_dependency(%q<syntax>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<bcat>.freeze, ["~> 0.6.2"])
      s.add_dependency(%q<kramdown>.freeze, ["~> 0.14"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.8.0"])
      s.add_dependency(%q<capybara>.freeze, ["< 2.1", ">= 1.1.2"])
      s.add_dependency(%q<rack-test>.freeze, [">= 0.6.1"])
      s.add_dependency(%q<ramaze>.freeze, [">= 0"])
      s.add_dependency(%q<sinatra>.freeze, [">= 1.3.2"])
      s.add_dependency(%q<webrat>.freeze, [">= 0.7.3"])
      s.add_dependency(%q<mime-types>.freeze, ["< 2.0"])
      s.add_dependency(%q<rubyzip>.freeze, ["< 1.0"])
    end
  else
    s.add_dependency(%q<builder>.freeze, [">= 2.1.2"])
    s.add_dependency(%q<diff-lcs>.freeze, [">= 1.1.3"])
    s.add_dependency(%q<gherkin>.freeze, ["~> 2.12"])
    s.add_dependency(%q<multi_json>.freeze, ["< 2.0", ">= 1.7.5"])
    s.add_dependency(%q<multi_test>.freeze, [">= 0.1.2"])
    s.add_dependency(%q<aruba>.freeze, ["= 0.5.2"])
    s.add_dependency(%q<json>.freeze, ["~> 1.7"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.5.2"])
    s.add_dependency(%q<rake>.freeze, ["< 10.2", ">= 0.9.2"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0.6.2"])
    s.add_dependency(%q<spork>.freeze, [">= 1.0.0.rc2"])
    s.add_dependency(%q<syntax>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<bcat>.freeze, ["~> 0.6.2"])
    s.add_dependency(%q<kramdown>.freeze, ["~> 0.14"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.8.0"])
    s.add_dependency(%q<capybara>.freeze, ["< 2.1", ">= 1.1.2"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0.6.1"])
    s.add_dependency(%q<ramaze>.freeze, [">= 0"])
    s.add_dependency(%q<sinatra>.freeze, [">= 1.3.2"])
    s.add_dependency(%q<webrat>.freeze, [">= 0.7.3"])
    s.add_dependency(%q<mime-types>.freeze, ["< 2.0"])
    s.add_dependency(%q<rubyzip>.freeze, ["< 1.0"])
  end
end
