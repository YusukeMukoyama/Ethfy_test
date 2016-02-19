# -*- encoding: utf-8 -*-
# stub: encryptor 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "encryptor"
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sean Huber", "S. Brent Faulkner", "William Monk"]
  s.date = "2013-11-14"
  s.description = "A simple wrapper for the standard ruby OpenSSL library to encrypt and decrypt strings"
  s.email = ["shuber@huberry.com", "sbfaulkner@gmail.com", "billy.monk@gmail.com"]
  s.homepage = "http://github.com/attr-encrypted/encryptor"
  s.rubygems_version = "2.2.2"
  s.summary = "A simple wrapper for the standard ruby OpenSSL library"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["= 0.9.2.2"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<simplecov-rcov>, [">= 0"])
    else
      s.add_dependency(%q<rake>, ["= 0.9.2.2"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<simplecov-rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, ["= 0.9.2.2"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<simplecov-rcov>, [">= 0"])
  end
end
