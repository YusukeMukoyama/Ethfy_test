# -*- encoding: utf-8 -*-
# stub: attr_encrypted 1.3.5 ruby lib

Gem::Specification.new do |s|
  s.name = "attr_encrypted"
  s.version = "1.3.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sean Huber", "S. Brent Faulkner", "William Monk", "Stephen Aghaulor"]
  s.date = "2016-01-12"
  s.description = "Generates attr_accessors that encrypt and decrypt attributes transparently"
  s.email = ["shuber@huberry.com", "sbfaulkner@gmail.com", "billy.monk@gmail.com", "saghaulor@gmail.com"]
  s.homepage = "http://github.com/attr-encrypted/attr_encrypted"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--main", "README.rdoc"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Encrypt and decrypt attributes"

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<encryptor>, ["~> 1.3.0"])
      s.add_development_dependency(%q<activerecord>, [">= 2.0.0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<datamapper>, [">= 0"])
      s.add_development_dependency(%q<addressable>, ["= 2.3.7"])
      s.add_development_dependency(%q<mocha>, ["~> 1.0.0"])
      s.add_development_dependency(%q<sequel>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<dm-sqlite-adapter>, [">= 0"])
      s.add_development_dependency(%q<rake>, ["= 0.9.2.2"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<simplecov-rcov>, [">= 0"])
    else
      s.add_dependency(%q<encryptor>, ["~> 1.3.0"])
      s.add_dependency(%q<activerecord>, [">= 2.0.0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<datamapper>, [">= 0"])
      s.add_dependency(%q<addressable>, ["= 2.3.7"])
      s.add_dependency(%q<mocha>, ["~> 1.0.0"])
      s.add_dependency(%q<sequel>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<dm-sqlite-adapter>, [">= 0"])
      s.add_dependency(%q<rake>, ["= 0.9.2.2"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<simplecov-rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<encryptor>, ["~> 1.3.0"])
    s.add_dependency(%q<activerecord>, [">= 2.0.0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<datamapper>, [">= 0"])
    s.add_dependency(%q<addressable>, ["= 2.3.7"])
    s.add_dependency(%q<mocha>, ["~> 1.0.0"])
    s.add_dependency(%q<sequel>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<dm-sqlite-adapter>, [">= 0"])
    s.add_dependency(%q<rake>, ["= 0.9.2.2"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<simplecov-rcov>, [">= 0"])
  end
end
