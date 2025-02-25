# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "font-awesome-rails"
  s.version = "4.6.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["bokmann"]
  s.date = "2016-06-23"
  s.description = "I like font-awesome. I like the asset pipeline. I like semantic versioning. If you do too, you're welcome."
  s.email = ["dbock@codesherpas.com"]
  s.homepage = "https://github.com/bokmann/font-awesome-rails"
  s.licenses = ["MIT", "SIL Open Font License"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.0.3"
  s.summary = "an asset gemification of the font-awesome icon font library"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["< 5.1", ">= 3.2"])
      s.add_development_dependency(%q<activesupport>, [">= 0"])
      s.add_development_dependency(%q<sass-rails>, [">= 0"])
    else
      s.add_dependency(%q<railties>, ["< 5.1", ">= 3.2"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<sass-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<railties>, ["< 5.1", ">= 3.2"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<sass-rails>, [">= 0"])
  end
end
