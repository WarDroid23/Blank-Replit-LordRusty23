# -*- encoding: utf-8 -*-
# stub: rubyzip 1.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "rubyzip".freeze
  s.version = "1.1.7".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alexander Simonov".freeze]
  s.date = "2015-02-02"
  s.email = ["alex@simonov.me".freeze]
  s.homepage = "http://github.com/rubyzip/rubyzip".freeze
  s.licenses = ["BSD 2-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "2.4.5".freeze
  s.summary = "rubyzip is a ruby module for reading and writing zip files".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_development_dependency(%q<rake>.freeze, ["~> 10.3".freeze])
  s.add_development_dependency(%q<pry>.freeze, ["~> 0.10".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.4".freeze])
  s.add_development_dependency(%q<coveralls>.freeze, ["~> 0.7".freeze])
  s.add_development_dependency(%q<guard>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<guard-minitest>.freeze, [">= 0".freeze])
end
