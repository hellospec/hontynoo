# frozen_string_literal: true

require_relative "lib/hontynoo/version"

Gem::Specification.new do |spec|
  spec.name                  = "hontynoo"
  spec.version               = Hontynoo::VERSION
  spec.authors               = ["woot"]
  spec.email                 = ["worrawutp@hellospec.com"]
  spec.license               = "MIT"

  spec.summary               = "Thai Astrology Hontynoo"
  spec.description           = "Thai astrology calculation called Hontynoo base on calculation from Horaram astrology school."
  spec.homepage              = "https://github.com/hellospec/hontynoo"
  spec.required_ruby_version = ">= 3.0"
  spec.files                 = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  spec.require_paths         = ["lib"]

  spec.metadata = {
    "homepage_uri"    => spec.homepage,
    "source_code_uri" => spec.homepage
  }
end
