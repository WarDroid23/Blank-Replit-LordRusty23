# -*- encoding: utf-8 -*-
# stub: kitchen-docker 2.15.0 ruby lib

Gem::Specification.new do |s|
  s.name = "kitchen-docker".freeze
  s.version = "2.15.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sean Porter".freeze]
  s.date = "2023-11-15"
  s.description = "A Docker Driver for Test Kitchen".freeze
  s.email = ["portertech@gmail.com".freeze]
  s.homepage = "https://github.com/test-kitchen/kitchen-docker".freeze
  s.licenses = ["Apache 2.0".freeze]
  s.rubygems_version = "3.4.10".freeze
  s.summary = "A Docker Driver for Test Kitchen".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<test-kitchen>.freeze, [">= 1.0.0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<cane>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<tailor>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<countloc>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.2".freeze])
  s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.2".freeze])
  s.add_development_dependency(%q<fuubar>.freeze, ["~> 2.0".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.9".freeze])
  s.add_development_dependency(%q<codecov>.freeze, ["~> 0.0".freeze, ">= 0.0.2".freeze])
  s.add_development_dependency(%q<kitchen-inspec>.freeze, ["~> 2.0".freeze])
  s.add_development_dependency(%q<train>.freeze, [">= 2.1".freeze, "< 4.0".freeze])
end
