# Omniauth::Bouncer

An Omniauth strategy for [Bouncer](https://github.com/sourdoughlabs/bouncer).

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-bouncer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-bouncer

## Usage

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :bouncer, ENV['BOUNCER_KEY'], ENV['BOUNCER_SECRET'], ENV['BOUNCER_SITE_URL']
    end

## Contributing

1. Fork it ( https://github.com/[my-github-username]/omniauth-bouncer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
