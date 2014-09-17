# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift(File.expand_path("../lib", __FILE__))

require "hammer_cli_console/version"

Gem::Specification.new do |spec|
  spec.authors = ['Adam Price',
                  'Martin Bačovský']
  spec.email = ["komidore64@gmail.com"]
  spec.license = "GPL-3"
  spec.description = "Hammer-CLI-Console is a plugin to hammer which provides a REPL feature to the Hammer environment similar to `rails console`."
  spec.summary = "Debugging support for Hammer."
  spec.homepage = "http://github.com/komidore64/hammer-cli-console"

  spec.files = %x{git ls-files}.split($/)

  spec.name = "hammer_cli_console"
  spec.require_paths = %w(lib)
  spec.version = HammerCLIConsole.version

  spec.add_dependency "hammer_cli", "~> 0.1.1"
  spec.add_dependency "pry"
end
