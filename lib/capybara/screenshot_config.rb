require "capybara"
require "capybara/screenshot_config/version"
require "capybara/screenshot_config/configuration"

module Capybara
  module ScreenshotConfig
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
      # TODO: merge options

      old_save_screenshot("#{ScreenshotConfig.configuration.save_dir}/#{path}", options)
    end
  end
end
