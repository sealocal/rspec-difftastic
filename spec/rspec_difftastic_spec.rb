require 'rspec'
require_relative '../lib/rspec-difftastic'

RSpec.describe RSpec::Support::Differ do
  let(:differ) { described_class.new }

  describe '#diff_as_string' do
    context 'when actual and expected are the same' do
      it 'returns an empty diff' do
        actual = 'same string'
        expected = 'same string'
        diff = differ.diff_as_string(actual, expected)
        expect(diff).to include('No changes.')
      end
    end

    context 'when actual and expected are different' do
      it 'returns the diff between the strings' do
        actual = 'string one'
        expected = 'string two'
        diff = differ.diff_as_string(actual, expected)
        expect(diff).to include('Expected', 'Actual')
      end
    end
  end
end
