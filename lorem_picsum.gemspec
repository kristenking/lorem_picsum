# frozen_string_literal: true

require_relative "lib/lorem_picsum/version"

Gem::Specification.new do |spec|
  spec.name = "lorem_picsum"
  spec.version = LoremPicsum::VERSION
  spec.authors = ["Kristina Degtiareva"]
  spec.email = ["kristina.degtyareva1@gmail.com"]

  spec.summary = "Gem to wrap Lorem Picsum API."
  spec.description = "Gem to wrap Lorem Picsum API."
  spec.homepage = "https://github.com/kristenking/lorem_picsum"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["source_code_uri"] = "https://github.com/kristenking/lorem_picsum"
  spec.metadata["changelog_uri"] = "https://github.com/kristenking/lorem_picsum/blob/master/CHANGELOG.md"

  spec.files = Dir["lib/**/*"] + ["README.md", "LICENSE.txt"]

  spec.add_development_dependency('rake', '~> 10.0')
  spec.add_development_dependency('rspec', '~> 3.0')
  spec.add_development_dependency('vcr', '~> 2.9.3')
  spec.add_development_dependency('webmock', '~> 1.8')
  spec.add_runtime_dependency('faraday', '~> 0.9.0')

  spec.add_runtime_dependency('json', '~> 2.3')
end
