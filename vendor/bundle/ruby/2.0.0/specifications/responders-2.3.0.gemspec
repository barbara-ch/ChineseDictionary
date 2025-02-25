# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "responders"
  s.version = "2.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jos\u{e9} Valim"]
  s.date = "2016-08-15"
  s.description = "A set of Rails responders to dry up your application"
  s.email = "contact@plataformatec.com.br"
  s.homepage = "http://github.com/plataformatec/responders"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "responders"
  s.rubygems_version = "2.0.3"
  s.summary = "A set of Rails responders to dry up your application"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>, ["< 5.1", ">= 4.2.0"])
    else
      s.add_dependency(%q<railties>, ["< 5.1", ">= 4.2.0"])
    end
  else
    s.add_dependency(%q<railties>, ["< 5.1", ">= 4.2.0"])
  end
end
