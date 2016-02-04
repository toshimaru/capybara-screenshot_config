require 'capybara'
require "capybara/screenshot_options/version"
require "capybara/screenshot_options/configuration"

module Capybara
  module ScreenshotOptions
    class << self
      def configure
        yield(configuration)
      end

      def configuration
        @configuration ||= Configuration.new
      end
    end
  end

  # monkey patching Capybara::Session#save_screenshot
  class Session
    alias_method :old_save_screenshot, :save_screenshot

    def save_screenshot(path, options={})
      old_save_screenshot("#{ScreenshotOptions.configuration.save_dir}/#{path}", options)
    end
  end
end
