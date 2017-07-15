# -*- encoding: utf-8 -*-
# stub: tiny_tds 1.1.0 x86-mingw32 lib

Gem::Specification.new do |s|
  s.name = "tiny_tds".freeze
  s.version = "1.1.0"
  s.platform = "x86-mingw32".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ken Collins".freeze, "Erik Bryn".freeze, "Will Bond".freeze]
  s.date = "2016-12-20"
  s.description = "TinyTDS - A modern, simple and fast FreeTDS library for Ruby using DB-Library. Developed for the ActiveRecord SQL Server adapter.".freeze
  s.email = ["ken@metaskills.net".freeze, "will@wbond.net".freeze]
  s.executables = ["defncopy".freeze, "tsql".freeze]
  s.files = ["bin/defncopy".freeze, "bin/tsql".freeze]
  s.homepage = "http://github.com/rails-sqlserver/tiny_tds".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "2.5.2".freeze
  s.summary = "TinyTDS - A modern, simple and fast FreeTDS library for Ruby using DB-Library.".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mini_portile2>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.4"])
      s.add_development_dependency(%q<rake-compiler>.freeze, ["= 0.9.5"])
      s.add_development_dependency(%q<rake-compiler-dock>.freeze, ["~> 0.6.0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.6"])
      s.add_development_dependency(%q<connection_pool>.freeze, ["~> 2.2"])
    else
      s.add_dependency(%q<mini_portile2>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.4"])
      s.add_dependency(%q<rake-compiler>.freeze, ["= 0.9.5"])
      s.add_dependency(%q<rake-compiler-dock>.freeze, ["~> 0.6.0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.6"])
      s.add_dependency(%q<connection_pool>.freeze, ["~> 2.2"])
    end
  else
    s.add_dependency(%q<mini_portile2>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.4"])
    s.add_dependency(%q<rake-compiler>.freeze, ["= 0.9.5"])
    s.add_dependency(%q<rake-compiler-dock>.freeze, ["~> 0.6.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.6"])
    s.add_dependency(%q<connection_pool>.freeze, ["~> 2.2"])
  end
end
