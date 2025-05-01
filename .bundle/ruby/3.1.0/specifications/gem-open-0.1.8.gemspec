# -*- encoding: utf-8 -*-
# stub: gem-open 0.1.8 ruby lib

Gem::Specification.new do |s|
  s.name = "gem-open".freeze
  s.version = "0.1.8".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nando Vieira".freeze]
  s.date = "2016-03-23"
  s.description = "Open gems on your favorite editor by running a specific gem command like `gem open nokogiri`.".freeze
  s.email = ["fnando.vieira@gmail.com".freeze]
  s.homepage = "http://github.com/fnando/gem-open".freeze
  s.rubygems_version = "3.5.9".freeze
  s.summary = "Open gems on your favorite editor by running a specific gem command like `gem open nokogiri`.".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<mocha>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<minitest-utils>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
end
