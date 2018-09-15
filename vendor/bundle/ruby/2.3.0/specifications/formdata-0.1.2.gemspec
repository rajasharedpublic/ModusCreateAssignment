# -*- encoding: utf-8 -*-
# stub: formdata 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "formdata".freeze
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nelson Darkwah Oppong".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-02-11"
  s.email = ["n@darkwahoppong.com".freeze]
  s.homepage = "http://github.com/nelsond/formdata".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.1".freeze)
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "Ruby gem to generate data in the same format as \"multipart/form-data\".".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.11"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.11"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 1.22"])
      s.add_development_dependency(%q<sinatra>.freeze, ["~> 1.4.6"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.11"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.11"])
      s.add_dependency(%q<webmock>.freeze, ["~> 1.22"])
      s.add_dependency(%q<sinatra>.freeze, ["~> 1.4.6"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.11"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.11"])
    s.add_dependency(%q<webmock>.freeze, ["~> 1.22"])
    s.add_dependency(%q<sinatra>.freeze, ["~> 1.4.6"])
  end
end
