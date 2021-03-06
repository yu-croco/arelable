
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "arelable/version"

Gem::Specification.new do |spec|
  spec.name          = "arelable"
  spec.version       = Arelable::VERSION
  spec.authors       = ["yu-croco"]
  spec.email         = ["yuki.kita22@gmail.com"]

  spec.summary       = %q{A ruby gem to handle ActiveRecord like Arel.}
  spec.description   = %q{A ruby gem to handle ActiveRecord like Arel.}
  spec.homepage      = "https://github.com/yu-croco/arelable"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activerecord', '>= 4.2.0'
  spec.add_dependency "activesupport", '>= 4.2.0'

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency 'mysql2', '>= 0.5.2'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.63.1"
end
