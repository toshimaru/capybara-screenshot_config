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

  module SaveScreenshotPatch
    def save_screenshot(path, options={})
      options = ScreenshotConfig.configuration.options.merge(options)

      super("#{ScreenshotConfig.configuration.save_dir}/#{path}", options)
    end
  end

  class Session
    prepend SaveScreenshotPatch
  end
end
