# -*- encoding: utf-8 -*-
# stub: turbolinks-scroll-to-hash-fix-rails 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "turbolinks-scroll-to-hash-fix-rails".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://github.com/simonneutert/turbolinks-scroll-to-hash-fix-rails" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Simon Neutert".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-01-20"
  s.description = "Turbolinks won't scroll to hash - but now you can again ;-)".freeze
  s.email = ["simon.neutert@gmail.com".freeze]
  s.files = [".gitignore".freeze, ".travis.yml".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "app/assets/javascripts/turbolinks-scroll-to-hash-fix-rails-nocoffee.js".freeze, "app/assets/javascripts/turbolinks-scroll-to-hash-fix-rails.coffee".freeze, "bin/console".freeze, "bin/setup".freeze, "lib/turbolinks/scroll/to/hash/fix/rails.rb".freeze, "lib/turbolinks/scroll/to/hash/fix/rails/version.rb".freeze, "turbolinks-scroll-to-hash-fix-rails.gemspec".freeze]
  s.homepage = "https://github.com/simonneutert/bootstrap4-tableexpanderjs-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Turbolinks won't scroll to hash - but now you can again ;-)".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.14"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<turbolinks>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<rails>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.14"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
      s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_dependency(%q<turbolinks>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.14"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_dependency(%q<turbolinks>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, [">= 0"])
  end
end
