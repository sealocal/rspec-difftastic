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
end


puts "Ruby version is: #{RUBY_VERSION}"
puts "RSpec version is: #{RSpec::Version::STRING}"
require 'rspec/autorun'

RSpec.describe 'RSpec Diff' do
  it do
    expect(
      id: 1,
      data: {
        name: 'John Appleseed',
      }
    ).to match(
      id: "1",
      data: {
        name: 'John Berry',
      }
    )
  end

  it do
    expect(
      status: 422,
      message: 'Your request to update record with id 42 was not processed.',
    ).to match(
      status: 422,
      message: 'Your reqest to udpate record with id 43 was not processed.',
    )
  end

  it do
    expect(
      california: ['los angeeles', 'san francisco'],
      oregon: ['portland', 'eugene'],
      washington: ['seattle', 'spokane'],
      new_york: ['new york city', 'albany'],
      texas: ['houston', 'austin'],
    ).to match(
      california: ['los angeles', 'san francisco'],
      oregon: ['potland', 'eugene'],
      washington: ['seattle', 'spokane'],
      new_york: ['new york city', 'albany'],
      texas: ['houston', 'austin'],
      montana: ['billings', 'helena'],
    )
  end
end
