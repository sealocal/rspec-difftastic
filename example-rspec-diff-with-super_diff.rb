# frozen_string_literal: true

begin
  require "bundler/inline"
rescue LoadError => e
  $stderr.puts "Bundler version 1.10 or later is required. Please update your Bundler"
  raise e
end

gemfile(true) do
  source "https://rubygems.org"

  gem "rspec"
  gem "super_diff"
end

puts "Ruby version is: #{RUBY_VERSION}"
puts "RSpec version is: #{RSpec::Version::STRING}"
require 'rspec/autorun'
require 'super_diff/rspec'
require_relative 'example_specs'

RSpec.describe 'RSpec Diff (with super_diff)' do
  include_examples 'Example Failing Specs'
end
