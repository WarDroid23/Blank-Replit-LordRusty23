# -*- encoding: utf-8 -*-
# stub: gem_bench 2.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "gem_bench".freeze
  s.version = "2.0.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "http://github.com/pboling/gem_bench/issues", "changelog_uri" => "http://github.com/pboling/gem_bench/blob/v2.0.0/CHANGELOG.md", "documentation_uri" => "https://www.rubydoc.info/gems/gem_bench/2.0.0", "funding_uri" => "https://liberapay.com/pboling", "homepage_uri" => "https://railsbling.com/tags/gem_bench/", "rubygems_mfa_required" => "true", "source_code_uri" => "http://github.com/pboling/gem_bench/tree/v2.0.0", "wiki_uri" => "http://github.com/pboling/gem_bench/wiki" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Peter Boling".freeze]
  s.bindir = "exe".freeze
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIEgDCCAuigAwIBAgIBATANBgkqhkiG9w0BAQsFADBDMRUwEwYDVQQDDAxwZXRl\nci5ib2xpbmcxFTATBgoJkiaJk/IsZAEZFgVnbWFpbDETMBEGCgmSJomT8ixkARkW\nA2NvbTAeFw0yMzA5MjAxNzMwMjhaFw0yNDA5MTkxNzMwMjhaMEMxFTATBgNVBAMM\nDHBldGVyLmJvbGluZzEVMBMGCgmSJomT8ixkARkWBWdtYWlsMRMwEQYKCZImiZPy\nLGQBGRYDY29tMIIBojANBgkqhkiG9w0BAQEFAAOCAY8AMIIBigKCAYEA+a9UvHo3\n84k96WgU5Kk5HB+cLZs/modjorsTfqY67MJF5nNvAoqcKTUBW4uG+Zpfnm3jaDO5\nGxhJEIZWfndYzycHT2KMVQ1uTP82ba8ZaKrPlPIafkbui3mdds47qsmqHiblKERg\nU532lkwfqHDlJwE7OBZQ59EwWWLynlT/yAUHpOBbqIuHKUxdpmBI+sIjrZcD1e05\nWmjkO6fwIdC5oM757aoPxIgXD587VOViH11Vkm2doskj4T8yONtwVHlcrrhJ9Bzd\n/zdp6vEn7GZQrABvpOlqwWxQ72ZnFhJe/RJZf6CXOPOh69Ai0QKYl2a1sYuCJKS3\nnsBnxXJINEEznjR7rZjNUmYD+CZqfjzgPqedRxTlASe7iA4w7xZOqMDzcuhNwcUQ\ntMEH6BTktxKP3jXZPXRfHCf6s+HRVb6vezAonTBVyydf5Xp5VwWkd6cwm+2BzHl5\n7kc/3lLxKMcsyEUprAsk8LdHohwZdC267l+RS++AP6Cz6x+nB3oGob19AgMBAAGj\nfzB9MAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdDgQWBBQCSSas60GqqMjt\nxR7LoY1gucEvtzAhBgNVHREEGjAYgRZwZXRlci5ib2xpbmdAZ21haWwuY29tMCEG\nA1UdEgQaMBiBFnBldGVyLmJvbGluZ0BnbWFpbC5jb20wDQYJKoZIhvcNAQELBQAD\nggGBAMl9ifcw5p+PdvB7dCPoNKoVdp/2LbC9ztETHuYL2gUMJB6UoS3o9c/piSuR\nV3ZMQaijmNu6ms1bWAtJ66LjmYrVflJtf9yp31Kierr9LpisMSUx2qbMOHGa8d2Z\nvCUWPF8E9Cg0mP3GAyZ6qql8jDh/anUKeksPXqJvNxNPDu2DVYsa/IWdl96whzS4\nBl7SwB1E7agps40UcshCSKaVDOU0M+XN6SrnJMElnBic+KSAkBkVFbzS0BE4ODZM\nBgE6nYzQ05qhuvbE+oGdACTlemNtDDWCh0uw+7x0q2PocGIDU5zsPn/WNTkCXPmB\nCHGvqDNWq4M7ncTKAaS2XExgyb7uPdq9fKiOW8nmH+zCiGzJXzBWwZlKf7L4Ht9E\na3f0e5C+zvee9Z5Ng9ciyfav9/fcXgYt5MjoBv27THr5XfBhgOCIHSYW2tqJmWKi\nKuxrfYrN+9HvMdm+nZ6TypmKftHY3Gj+/uu+g8Icm/zrvTWAEE0mcJOkfrIoNPJb\npF8dMA==\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2023-09-25"
  s.description = "Enforce Gemfile version constraints\nRegex search across all installed gem's source code to find issues quickly\nTrim down app load times by keeping your worst players on the bench (useful for beating Heroku slug load time cutoff)".freeze
  s.email = ["peter.boling@gmail.com".freeze]
  s.homepage = "http://github.com/pboling/gem_bench".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.5.9".freeze
  s.summary = "Static Gemfile and installed gem library source code analysis".freeze

  s.installed_by_version = "3.5.9".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<bundler>.freeze, [">= 1.14".freeze])
  s.add_runtime_dependency(%q<version_gem>.freeze, ["~> 1.1".freeze, ">= 1.1.3".freeze])
  s.add_development_dependency(%q<redcarpet>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<yard>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<yard-junk>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<awesome_print>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<gem-release>.freeze, ["~> 2.0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec-block_is_expected>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rubocop-lts>.freeze, ["~> 10.1".freeze])
  s.add_development_dependency(%q<rubocop-packaging>.freeze, ["~> 0.5".freeze, ">= 0.5.2".freeze])
  s.add_development_dependency(%q<rubocop-rspec>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, [">= 0".freeze])
end
