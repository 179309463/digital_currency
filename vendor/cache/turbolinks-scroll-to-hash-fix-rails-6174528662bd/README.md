# turbolinks-scroll-to-hash-fix-rails

Because of Turbolinks your Rails App's anchor or bookmark links won't work as they should. Don't be afraid, this gem contains some simple CoffeeScript to the rescue.

**dependencies:** jquery, CoffeeScript, turbolinks (and rails)

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'turbolinks-scroll-to-hash-fix-rails', :git => 'https://github.com/simonneutert/turbolinks-scroll-to-hash-fix-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install turbolinks-scroll-to-hash-fix-rails

## Usage
Insert in `application.js` before `//= require_tree .`

**Choose between the CoffeeScript and the JavaScript/jQuery file.**

For the CoffeeScript variant:
``` javascript
//= require turbolinks-scroll-to-hash-fix-rails
```

For the JavaScript/jQuery variant:
``` javascript
//= require turbolinks-scroll-to-hash-fix-rails-nocoffee
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/turbolinks-scroll-to-hash-fix-rails.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
