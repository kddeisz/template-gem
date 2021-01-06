# frozen_string_literal: true

require_relative 'lib/template/version'

Gem::Specification.new do |spec|
  spec.name          = 'template'
  spec.version       = Template::VERSION
  spec.authors       = ['Kevin Newton']
  spec.email         = ['kevin.deisz+github@gmail.com']

  spec.summary       = 'This is a gem template'
  spec.homepage      = 'https://github.com/kddeisz/template'
  spec.license       = 'MIT'

  spec.files         = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w[lib]

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
end
