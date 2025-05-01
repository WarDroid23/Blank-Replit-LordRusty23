# -*- encoding: utf-8 -*-
# stub: annotate_gem 0.0.14 ruby lib

Gem::Specification.new do |s|
  s.name = "annotate_gem".freeze
  s.version = "0.0.14".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ivan Tse".freeze]
  s.date = "2019-09-24"
  s.description = "Clarify your dependencies by adding a detailed comment to each line in Gemfile specifying the gem's summary and its website if any. ".freeze
  s.email = ["ivan.tse1@gmail.com".freeze]
  s.executables = ["annotate-gem".freeze, "annotate_gem".freeze]
  s.files = ["bin/annotate-gem".freeze, "bin/annotate_gem".freeze]
  s.homepage = "https://github.com/ivantsepp/annotate_gem".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Add comments to your Gemfile with each dependency's description.".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_runtime_dependency(%q<bundler>.freeze, [">= 1.1".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10.0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0".freeze])
  s.add_development_dependency(%q<mocha>.freeze, ["~> 1.1".freeze])
end
