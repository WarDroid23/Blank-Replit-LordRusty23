# -*- encoding: utf-8 -*-
# stub: jira-ruby 2.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jira-ruby".freeze
  s.version = "2.3.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "source_code_uri" => "https://github.com/sumoheavy/jira-ruby" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["SUMO Heavy Industries".freeze, "test IO".freeze]
  s.date = "2023-01-23"
  s.description = "API for JIRA".freeze
  s.homepage = "http://www.sumoheavy.com".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.5.9".freeze
  s.summary = "Ruby Gem for use with the Atlassian JIRA REST API".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<atlassian-jwt>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<multipart-post>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<oauth>.freeze, ["~> 0.5".freeze, ">= 0.5.0".freeze])
  s.add_development_dependency(%q<guard>.freeze, ["~> 2.13".freeze, ">= 2.13.0".freeze])
  s.add_development_dependency(%q<guard-rspec>.freeze, ["~> 4.6".freeze, ">= 4.6.5".freeze])
  s.add_development_dependency(%q<pry>.freeze, ["~> 0.10".freeze, ">= 0.10.3".freeze])
  s.add_development_dependency(%q<railties>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10.3".freeze, ">= 10.3.2".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0".freeze, ">= 3.0.0".freeze])
  s.add_development_dependency(%q<webmock>.freeze, ["~> 1.18".freeze, ">= 1.18.0".freeze])
end
