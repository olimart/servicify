# Servicify

[![Build Status](https://semaphoreci.com/api/v1/olimart/servicify/branches/master/badge.svg)](https://semaphoreci.com/olimart/servicify)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'servicify'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install servicify

## Usage

> https://www.driftingruby.com/episodes/service-objects-for-api-interactions-with-twilio

> All the credit goes to [Dave Kimura](https://www.twitter.com/kobaltz) from [DriftingRuby](https://www.driftingruby.com)

```ruby
class MyService < Servicify::Object
  def initialize # optional
  end

  def call # required
    # code goes here
  end
end
```

Your service will then gets access to `success?`, `failure?`, and `errors` methods.

You can also write your service to inherit from `ServiceResult` class

```ruby
class MyService < ServiceResult
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

To experiment with that code, run `bin/console` for an interactive prompt.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
