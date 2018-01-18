# -*- encoding: utf-8 -*-
# stub: thredded-workgroup 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "thredded-workgroup".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "TODO: Set to 'http://mygemserver.com'" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tim Diggins".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-01-18"
  s.description = "Write a longer description or delete this line.".freeze
  s.email = ["tim@red56.uk".freeze]
  s.files = [".gitignore".freeze, ".rspec".freeze, ".rubocop".freeze, ".rubocop.yml".freeze, ".travis.yml".freeze, "CODE_OF_CONDUCT.md".freeze, "Gemfile".freeze, "Guardfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "app/assets/images/thredded/workgroup/.keep".freeze, "app/assets/javascripts/thredded-workgroup.js".freeze, "app/assets/javascripts/thredded/workgroup/follow.js".freeze, "app/assets/javascripts/thredded/workgroup/topics.js".freeze, "app/assets/stylesheets/thredded-workgroup.scss".freeze, "app/assets/stylesheets/thredded/workgroup/_navs.scss".freeze, "app/assets/stylesheets/thredded/workgroup/_topics.scss".freeze, "app/controllers/thredded/posts_controller.rb".freeze, "app/controllers/thredded/workgroup/application_controller.rb".freeze, "app/controllers/thredded/workgroup/navs_controller.rb".freeze, "app/helpers/thredded/application_helper.rb".freeze, "app/helpers/thredded/workgroup/application_helper.rb".freeze, "app/view_models/thredded/topic_view.rb".freeze, "app/view_models/thredded/topics_page_view.rb".freeze, "app/views/layouts/thredded/workgroup/application.html.erb".freeze, "app/views/thredded/posts_common/form/_after_content.html.erb".freeze, "app/views/thredded/shared/_header.html.erb".freeze, "app/views/thredded/topics/_topic.html.erb".freeze, "app/views/thredded/topics/_topics_with_last_post.html.erb".freeze, "app/views/thredded/topics/topic/_body.html.erb".freeze, "app/views/thredded/workgroup/navs/_personal_nav.html.erb".freeze, "app/views/thredded/workgroup/navs/all_topics.html.erb".freeze, "app/views/thredded/workgroup/navs/awaiting.html.erb".freeze, "app/views/thredded/workgroup/navs/following.html.erb".freeze, "app/views/thredded/workgroup/navs/unread.html.erb".freeze, "bin/console".freeze, "bin/dummy-rails".freeze, "bin/rails.rb".freeze, "bin/rspec".freeze, "bin/setup".freeze, "config/locales/en.yml".freeze, "config/routes.rb".freeze, "lib/thredded/workgroup.rb".freeze, "lib/thredded/workgroup/engine.rb".freeze, "lib/thredded/workgroup/route_delegator.rb".freeze, "lib/thredded/workgroup/thredded_route_delegator.rb".freeze, "lib/thredded/workgroup/version.rb".freeze, "script/create-db-users".freeze, "script/dummy-console".freeze, "script/update_from_thredded".freeze, "shared.gemfile".freeze, "thredded-workgroup.gemspec".freeze]
  s.homepage = "https://github.com/red56/thredded-workgroup.".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Extension to Thredded with features for workgroup messaging (Unread, Unreplied, Following).".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thredded>.freeze, ["~> 0.12"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<capybara>.freeze, ["~> 2.4"])
      s.add_development_dependency(%q<capybara-webkit>.freeze, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_development_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<faker>.freeze, [">= 1.6.2"])
      s.add_development_dependency(%q<launchy>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, [">= 3.5.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["= 0.41.2"])
      s.add_development_dependency(%q<transactional_capybara>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails-i18n>.freeze, [">= 0"])
      s.add_development_dependency(%q<kaminari-i18n>.freeze, [">= 0"])
      s.add_development_dependency(%q<http_accept_language>.freeze, [">= 0"])
      s.add_development_dependency(%q<mysql2>.freeze, [">= 0"])
      s.add_development_dependency(%q<pg>.freeze, [">= 0"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<puma>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails_email_preview>.freeze, [">= 2.0.1"])
      s.add_development_dependency(%q<roadie-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<i18n-tasks>.freeze, [">= 0"])
      s.add_development_dependency(%q<web-console>.freeze, [">= 0"])
      s.add_development_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_development_dependency(%q<thredded-markdown_coderay>.freeze, [">= 0"])
      s.add_development_dependency(%q<thredded-markdown_katex>.freeze, [">= 0"])
      s.add_development_dependency(%q<turbolinks>.freeze, [">= 0"])
      s.add_development_dependency(%q<coffee-rails>.freeze, [">= 0"])
    else
      s.add_dependency(%q<thredded>.freeze, ["~> 0.12"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<capybara>.freeze, ["~> 2.4"])
      s.add_dependency(%q<capybara-webkit>.freeze, [">= 0"])
      s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
      s.add_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
      s.add_dependency(%q<faker>.freeze, [">= 1.6.2"])
      s.add_dependency(%q<launchy>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 3.5.0"])
      s.add_dependency(%q<rubocop>.freeze, ["= 0.41.2"])
      s.add_dependency(%q<transactional_capybara>.freeze, [">= 0"])
      s.add_dependency(%q<rails-i18n>.freeze, [">= 0"])
      s.add_dependency(%q<kaminari-i18n>.freeze, [">= 0"])
      s.add_dependency(%q<http_accept_language>.freeze, [">= 0"])
      s.add_dependency(%q<mysql2>.freeze, [">= 0"])
      s.add_dependency(%q<pg>.freeze, [">= 0"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<puma>.freeze, [">= 0"])
      s.add_dependency(%q<rails_email_preview>.freeze, [">= 2.0.1"])
      s.add_dependency(%q<roadie-rails>.freeze, [">= 0"])
      s.add_dependency(%q<i18n-tasks>.freeze, [">= 0"])
      s.add_dependency(%q<web-console>.freeze, [">= 0"])
      s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_dependency(%q<thredded-markdown_coderay>.freeze, [">= 0"])
      s.add_dependency(%q<thredded-markdown_katex>.freeze, [">= 0"])
      s.add_dependency(%q<turbolinks>.freeze, [">= 0"])
      s.add_dependency(%q<coffee-rails>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<thredded>.freeze, ["~> 0.12"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<capybara>.freeze, ["~> 2.4"])
    s.add_dependency(%q<capybara-webkit>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
    s.add_dependency(%q<faker>.freeze, [">= 1.6.2"])
    s.add_dependency(%q<launchy>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 3.5.0"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.41.2"])
    s.add_dependency(%q<transactional_capybara>.freeze, [">= 0"])
    s.add_dependency(%q<rails-i18n>.freeze, [">= 0"])
    s.add_dependency(%q<kaminari-i18n>.freeze, [">= 0"])
    s.add_dependency(%q<http_accept_language>.freeze, [">= 0"])
    s.add_dependency(%q<mysql2>.freeze, [">= 0"])
    s.add_dependency(%q<pg>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<puma>.freeze, [">= 0"])
    s.add_dependency(%q<rails_email_preview>.freeze, [">= 2.0.1"])
    s.add_dependency(%q<roadie-rails>.freeze, [">= 0"])
    s.add_dependency(%q<i18n-tasks>.freeze, [">= 0"])
    s.add_dependency(%q<web-console>.freeze, [">= 0"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_dependency(%q<thredded-markdown_coderay>.freeze, [">= 0"])
    s.add_dependency(%q<thredded-markdown_katex>.freeze, [">= 0"])
    s.add_dependency(%q<turbolinks>.freeze, [">= 0"])
    s.add_dependency(%q<coffee-rails>.freeze, [">= 0"])
  end
end
