# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "autoprefixer-rails"
  s.version = "6.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andrey Sitnik"]
  s.date = "2016-09-02"
  s.email = "andrey@sitnik.ru"
  s.extra_rdoc_files = ["README.md", "LICENSE", "CHANGELOG.md"]
  s.files = ["README.md", "LICENSE", "CHANGELOG.md"]
  s.homepage = "https://github.com/ai/autoprefixer-rails"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0")
  s.rubygems_version = "2.0.3"
  s.summary = "Parse CSS and add vendor prefixes to CSS rules using values from the Can I Use website."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<execjs>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 0"])
      s.add_development_dependency(%q<compass>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
    else
      s.add_dependency(%q<execjs>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<compass>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<execjs>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<compass>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
  end
end
