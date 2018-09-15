# -*- encoding: utf-8 -*-
# stub: open5 0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "open5".freeze
  s.version = "0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["ujihisa".freeze]
  s.date = "2010-03-04"
  s.description = "open5(cmd, *option) #=> stdin, stdout, stderr, thread".freeze
  s.email = "ujihisa at gmail.com".freeze
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "https://github.com/ujihisa/open5".freeze
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "open5(cmd, *option) #=> stdin, stdout, stderr, thread".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<open4>.freeze, [">= 0"])
    else
      s.add_dependency(%q<open4>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<open4>.freeze, [">= 0"])
  end
end
