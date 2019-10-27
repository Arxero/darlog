# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "darlog"
  spec.version       = "0.1.4"
  spec.authors       = ["Maverick Cloud"]
  spec.email         = ["feruchio599@gmail.com"]

  spec.summary       = "Darlog theme is a minimalistic dark theme for Jekyll and is suitable for any kind of blogging."
  spec.homepage      = "https://github.com/Arxero/darlog"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 2.0.1"
  spec.add_development_dependency "rake", "~> 12.0"
end
