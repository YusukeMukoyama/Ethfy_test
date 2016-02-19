# -*- encoding: utf-8 -*-
# stub: kraken_ruby 0.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "kraken_ruby"
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Alexander Leishman"]
  s.date = "2015-02-03"
  s.description = "\"Wrapper for Kraken Exchange API\""
  s.email = ["leishman3@gmail.com"]
  s.homepage = "https://www.kraken.com/help/api"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "\"Wrapper for Kraken Exchange API\""

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
      s.add_runtime_dependency(%q<addressable>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<hashie>, [">= 0"])
      s.add_dependency(%q<addressable>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<hashie>, [">= 0"])
    s.add_dependency(%q<addressable>, [">= 0"])
  end
end
