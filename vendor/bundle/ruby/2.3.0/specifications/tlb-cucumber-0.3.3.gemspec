# -*- encoding: utf-8 -*-
# stub: tlb-cucumber 0.3.3 ruby cucumber/lib

Gem::Specification.new do |s|
  s.name = "tlb-cucumber".freeze
  s.version = "0.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["cucumber/lib".freeze]
  s.authors = ["Janmejay Singh".freeze, "Pavan KS".freeze]
  s.date = "2013-02-19"
  s.description = "TLB-Ruby component that provides support for load balancing tests written using cucumber. This library consumes APIs provided by tlb-core.\n".freeze
  s.email = "singh.janmejay@gmail.com;itspanzi@gmail.com".freeze
  s.extra_rdoc_files = ["README.markdown".freeze]
  s.files = ["README.markdown".freeze]
  s.homepage = "http://github.com/test-load-balancer/tlb.rb".freeze
  s.post_install_message = "=========================================================================\nDocumentation: Detailed configuration documentation can be found at http://test-load-balancer.github.com. Documentation section in this website hosts documentation for every public release.\n\n-------------------------------------------------------------------------\nTLB Setup: You'll need a TLB-Server in your network that is reachable over the network from the machines you use to execute your project's test-suite. Please refer the TLB documentation for details.\n\n-------------------------------------------------------------------------\nExample(s): We maintain a directory of tlb-enabled dummy projects written in different languages using different testing and build frameworks to help new TLB users get started and provide users a working project to refer to while hooking up TLB on their project(s).\nEach of these projects have a shell script(named run_balanced.sh) that is meant to demonstrate a typical tlb-enabled build(by starting a local tlb server, and executing two partitions that run dummy tests locally). This script also starts its own server(so you do not need to worry about the TLB server for trying it out).\nWe recommend playing with the configuration-variable values being set in the shell-script(s) to understand the effect different values have on load-balancing/reordering behavior.\n\nExamples archive is released along-with TLB and is available for download at http://code.google.com/p/tlb/downloads/list.\n\nTo execute the example project, drop into the example project directory(examples/rspec2_example for instance) and invoke the './run_balanced.sh'.\n\n-------------------------------------------------------------------------\nIssue Tracker: http://code.google.com/p/tlb/issues/list\n\n=========================================================================\n".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubyforge_project = "tlb-rb".freeze
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "tlb-cucumber-0.3.3".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<tlb-core>.freeze, ["= 0.3.3"])
      s.add_runtime_dependency(%q<cucumber>.freeze, [">= 0.10.2"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<tlb-core>.freeze, ["= 0.3.3"])
      s.add_dependency(%q<cucumber>.freeze, [">= 0.10.2"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<tlb-core>.freeze, ["= 0.3.3"])
    s.add_dependency(%q<cucumber>.freeze, [">= 0.10.2"])
  end
end
