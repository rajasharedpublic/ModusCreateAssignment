# -*- encoding: utf-8 -*-
# stub: tlb-core 0.3.3 ruby core/lib

Gem::Specification.new do |s|
  s.name = "tlb-core".freeze
  s.version = "0.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["core/lib".freeze]
  s.authors = ["Janmejay Singh".freeze, "Pavan KS".freeze]
  s.date = "2013-02-19"
  s.description = "TLB-Ruby base library that provides common test-load-balancing infrastructure for Ruby testing tools. Core in itself is framework agnostic. It exposes APIs that allow any framework specific libraries to load-balance.\n".freeze
  s.email = "singh.janmejay@gmail.com;itspanzi@gmail.com".freeze
  s.extra_rdoc_files = ["README.markdown".freeze]
  s.files = ["README.markdown".freeze]
  s.homepage = "http://github.com/test-load-balancer/tlb.rb".freeze
  s.post_install_message = "=========================================================================\nDocumentation: Detailed configuration documentation can be found at http://test-load-balancer.github.com. Documentation section in this website hosts documentation for every public release.\n\n-------------------------------------------------------------------------\nTLB Setup: You'll need a TLB-Server in your network that is reachable over the network from the machines you use to execute your project's test-suite. Please refer the TLB documentation for details.\n\n-------------------------------------------------------------------------\nNote: Core is just the base library that implements common infrastructure for test-load-balancing in Ruby and is completely testing-framework agnostic. It exposes APIs that allow other ruby libraries to load-balance tests. You'll need to install one of the testing-framework specific libraries to make use of it.\n\n=========================================================================\n".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubyforge_project = "tlb-rb".freeze
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "tlb-core-0.3.3".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<open5>.freeze, [">= 0.2"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<open5>.freeze, [">= 0.2"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<open5>.freeze, [">= 0.2"])
  end
end
