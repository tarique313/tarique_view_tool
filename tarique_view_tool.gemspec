# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tarique_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "tarique_view_tool"
  spec.version       = TariqueViewTool::VERSION
  spec.authors       = ["Gazi Tarique Mahmud"]
  spec.email         = ["mahmud.tarique@gmail.com"]

  spec.summary       = %q{view specific method}
  spec.description   = %q{Provides generated HTML data for Rails applications}
  spec.homepage      = "http://www.tariquemahmud.net"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
