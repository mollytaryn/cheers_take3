#!/usr/bin/env Ruby
# -*- ruby -*-

require 'rake/clean'
require 'rake/testtask'

task :default => :test

Rake::TestTask.new() do |config|
  config.pattern = "test/integration/test_*.rb"
  config.pattern = "test/units/test_*.rb"
end
