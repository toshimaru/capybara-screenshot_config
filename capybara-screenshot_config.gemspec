lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capybara/screenshot_config/version'

Gem::Specification.new do |spec|
  spec.name          = "capybara-screenshot_config"
  spec.version       = Capybara::ScreenshotConfig::VERSION
  spec.authors       = ["toshimaru"]
  spec.email         = ["me@toshimaru.net"]

  spec.summary       = %q{Easier Capybara screenshot configuration}
  spec.description   = %q{Easier Capybara screenshot configuration gem.}
  spec.homepage      = "https://github.com/toshimaru/capybara-screenshot_config"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "capybara", "~> 2.5"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
