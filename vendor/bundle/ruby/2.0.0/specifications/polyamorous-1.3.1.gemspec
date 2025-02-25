# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "polyamorous"
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ernie Miller", "Ryan Bigg", "Jon Atack", "Xiang Li"]
  s.date = "2016-07-13"
  s.description = "\n    This is just an extraction from Ransack/Squeel. You probably don't want to use this\n    directly. It extends ActiveRecord's associations to support polymorphic belongs_to\n    associations.\n  "
  s.email = ["ernie@erniemiller.org", "radarlistener@gmail.com", "jonnyatack@gmail.com", "bigxiang@gmail.com"]
  s.homepage = "https://github.com/activerecord-hackery/polyamorous"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "polyamorous"
  s.rubygems_version = "2.0.3"
  s.summary = "Loves/is loved by polymorphic belongs_to associations, Ransack, Squeel, MetaSearch..."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 3.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3"])
      s.add_development_dependency(%q<machinist>, ["~> 1.0.6"])
      s.add_development_dependency(%q<faker>, ["~> 1.6.5"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3.3"])
    else
      s.add_dependency(%q<activerecord>, [">= 3.0"])
      s.add_dependency(%q<rspec>, ["~> 3"])
      s.add_dependency(%q<machinist>, ["~> 1.0.6"])
      s.add_dependency(%q<faker>, ["~> 1.6.5"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.3"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 3.0"])
    s.add_dependency(%q<rspec>, ["~> 3"])
    s.add_dependency(%q<machinist>, ["~> 1.0.6"])
    s.add_dependency(%q<faker>, ["~> 1.6.5"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.3"])
  end
end
