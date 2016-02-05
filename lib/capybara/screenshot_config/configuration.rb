module Capybara
  module ScreenshotConfig
    class Configuration
      attr_accessor :save_dir, :full

      def initialize
        @save_dir ||= "screenshot"
        @full     ||= false
      end

      def options
        {
          full: @full
        }
      end
    end
  end
end
