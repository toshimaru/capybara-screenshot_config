# Capybara::ScreenshotConfig

[![Gem Version](https://badge.fury.io/rb/capybara-screenshot_config.svg)](https://badge.fury.io/rb/capybara-screenshot_config)
[![Code Climate](https://codeclimate.com/github/toshimaru/capybara-screenshot_config/badges/gpa.svg)](https://codeclimate.com/github/toshimaru/capybara-screenshot_config)

Easier Capybara screenshot configuration gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capybara-screenshot_config'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capybara-screenshot_config

## Requirement
- capybara 2.x or more
- poltergeist for Capybara javascript_driver

## Usage

### Setup poltergeist

```ruby
require "capybara/poltergeist"
Capybara.javascript_driver = :poltergeist
```

For more information, see [here](https://github.com/teampoltergeist/poltergeist).

### ScreenshotConfig configuration

```ruby
Capybara::ScreenshotConfig.configure do |config|
  config.save_dir = "screenshot" # [String]  screenshot save directory
  config.full     = true         # [Boolean] full screenshot
end
```

### save_screenshot

```ruby
describe 'screenshot', js: true do
  it { page.save_screenshot "screenshot.png" }
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/capybara-screenshot_config.
