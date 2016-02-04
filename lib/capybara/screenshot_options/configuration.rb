module Capybara
  module ScreenshotOptions
    class Configuration
      attr_accessor :save_dir, :full

      def initialize
        @save_dir ||= "screenshot";
        @full     ||= false
      end
    end
  end
end
