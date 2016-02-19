# -*- encoding: utf-8 -*-
# stub: rotp 2.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rotp"
  s.version = "2.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mark Percival"]
  s.date = "2015-06-03"
  s.description = "Works for both HOTP and TOTP, and includes QR Code provisioning"
  s.email = ["mark@markpercival.us"]
  s.executables = ["rotp"]
  s.files = ["bin/rotp"]
  s.homepage = "http://github.com/mdp/rotp"
  s.licenses = ["MIT"]
  s.rubyforge_project = "rotp"
  s.rubygems_version = "2.2.2"
  s.summary = "A Ruby library for generating and verifying one time passwords"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<guard-rspec>, ["~> 4.5"])
      s.add_development_dependency(%q<rake>, ["~> 10.4"])
      s.add_development_dependency(%q<rspec>, ["~> 3.1"])
      s.add_development_dependency(%q<timecop>, ["~> 0.7"])
    else
      s.add_dependency(%q<guard-rspec>, ["~> 4.5"])
      s.add_dependency(%q<rake>, ["~> 10.4"])
      s.add_dependency(%q<rspec>, ["~> 3.1"])
      s.add_dependency(%q<timecop>, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<guard-rspec>, ["~> 4.5"])
    s.add_dependency(%q<rake>, ["~> 10.4"])
    s.add_dependency(%q<rspec>, ["~> 3.1"])
    s.add_dependency(%q<timecop>, ["~> 0.7"])
  end
end
