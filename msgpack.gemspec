# -*- mode: ruby; coding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'msgpack/version'

Gem::Specification.new do |s|
  s.name = "msgpack-ruby"
  s.version = MessagePack::VERSION
  s.summary = "MessagePack, a binary-based efficient data interchange format."
  s.description = %q{This gem is a prerelease of the official version ("msgpack"). If that gem ever releases 0.5.0, it should be used instead of this one.}
  s.author = "FURUHASHI Sadayuki"
  s.email = "frsyuki@users.sourceforge.jp"
  s.homepage = "http://msgpack.org/"
  s.rubyforge_project = "msgpack"
  s.has_rdoc = true
  s.rdoc_options = ["ext"]

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n") 
  s.require_paths = ["lib"]

  if RUBY_PLATFORM =~ /java/
    s.platform = "java"
    s.files += ["lib/msgpack/msgpack.jar"]
  else
    s.platform = Gem::Platform::RUBY
    s.files -= Dir['lib/*.jar']
    s.files -= Dir['ext/**/*.java']
  end

  s.add_development_dependency 'bundler', ['>= 1.0.0']
  s.add_development_dependency 'rake', ['>= 0.8.7']
  s.add_development_dependency 'rake-compiler', ['~> 0.7.1']
  
end
