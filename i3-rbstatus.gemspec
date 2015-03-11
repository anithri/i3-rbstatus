# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "i3-rbstatus"
  spec.version       = File.read('VERSION')
  spec.authors       = ["scott m parrish"]
  spec.email         = ["anithri@gmail.com"]
  spec.summary       = %q{an i3-bar status daemon}
  spec.description   = %q{Based on https://github.com/acrisci/i3-dstatus}
  spec.homepage      = "https://github.com/anithri/i3-rbstatus"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "virtus"
  spec.add_dependency "ruby-dbus"
  spec.add_development_dependency "version"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
