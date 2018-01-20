# -*- encoding: utf-8 -*-
# stub: acts_as_paranoid 1.0.0.beta ruby lib

Gem::Specification.new do |s|
  s.name = "acts_as_paranoid".freeze
  s.version = "1.0.0.beta"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Zachary Scott".freeze, "Goncalo Silva".freeze, "Rick Olson".freeze]
  s.date = "2018-01-20"
  s.description = "Check the home page for more in-depth information.".freeze
  s.email = ["e@zzak.io".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze, "lib/acts_as_paranoid.rb".freeze, "lib/acts_as_paranoid/associations.rb".freeze, "lib/acts_as_paranoid/core.rb".freeze, "lib/acts_as_paranoid/preloader_association.rb".freeze, "lib/acts_as_paranoid/relation.rb".freeze, "lib/acts_as_paranoid/validations.rb".freeze, "lib/acts_as_paranoid/version.rb".freeze, "test/test_associations.rb".freeze, "test/test_core.rb".freeze, "test/test_default_scopes.rb".freeze, "test/test_helper.rb".freeze, "test/test_inheritance.rb".freeze, "test/test_preloader_association.rb".freeze, "test/test_relations.rb".freeze, "test/test_validations.rb".freeze]
  s.homepage = "https://github.com/ActsAsParanoid/acts_as_paranoid".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Active Record plugin which allows you to hide and restore records without actually deleting them.".freeze
  s.test_files = ["test/test_inheritance.rb".freeze, "test/test_helper.rb".freeze, "test/test_preloader_association.rb".freeze, "test/test_default_scopes.rb".freeze, "test/test_associations.rb".freeze, "test/test_validations.rb".freeze, "test/test_core.rb".freeze, "test/test_relations.rb".freeze]

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, ["< 6.0", ">= 4.2"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 6.0", ">= 4.2"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rdoc>.freeze, [">= 0"])
      s.add_development_dependency(%q<minitest>.freeze, ["<= 6.0", ">= 4.0"])
    else
      s.add_dependency(%q<activerecord>.freeze, ["< 6.0", ">= 4.2"])
      s.add_dependency(%q<activesupport>.freeze, ["< 6.0", ">= 4.2"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rdoc>.freeze, [">= 0"])
      s.add_dependency(%q<minitest>.freeze, ["<= 6.0", ">= 4.0"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, ["< 6.0", ">= 4.2"])
    s.add_dependency(%q<activesupport>.freeze, ["< 6.0", ">= 4.2"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 0"])
    s.add_dependency(%q<minitest>.freeze, ["<= 6.0", ">= 4.0"])
  end
end
