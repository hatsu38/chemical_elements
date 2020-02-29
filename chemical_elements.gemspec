# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chemical_elements/version'

Gem::Specification.new do |spec|
  spec.name        = 'chemical_elements'
  spec.version     = ChemicalElements::VERSION
  spec.authors     = ['hatsu38']
  spec.email       = ['hajiwata0308@gmail.com']

  spec.summary     = 'Provide chemical element list data based on the periodic table.'
  spec.description = 'Provide chemical element list data based on the periodic table.'
  spec.homepage    = 'https://github.com/hatsu38/chemical_elements'
  spec.license     = 'MIT'

  spec.metadata['homepage_uri']      = spec.homepage
  spec.metadata['source_code_uri']   = 'https://github.com/hatsu38/chemical_elements'
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
