# rspec-difftastic

This gem allows you to use [difftastic-ruby](https://github.com/joeldrapper/difftastic-ruby) in place of RSpec's default differ.

This is a quick patch implementation and may not cover edge cases. To reduce disruptions and maximize usefulness, difftastic is only applied when RSpec diffs strings.


## Motivation

When an RSpec test fails, the output includes so much red text that reading the diff takes more time than it should.

A few attempts have been made to improve the developer experience with RSpec failures (e.g., [super_diff](https://github.com/splitwise/super_diff) and [a new default differ](https://github.com/rspec/rspec/issues/94)).

Integrating [difftastic-ruby](https://github.com/joeldrapper/difftastic-ruby) with RSpec makes another attempt at outputting diffs that are easier to read upon RSpec failures.

## Diff Examples for Comparison

### RSpec (default differ)

    ruby example-rspec-diff.rb

So much red to scan.

### RSpec with super_diff

    ruby example-rspec-diff-with-super_diff.rb

Red is replaced with white, magenta, and yellow - easily readible!

### RSpec with difftastic

    ruby example-rspec-diff-with-rspec-difftastic.rb

Red and green is side-by-side.  Word-level diff to highlight that the last name is different.

## Development & Contributing

Install the development dependencies:

    bundle install

Confirm the spec suite is passing:

    bundle exec rspec

Make your modifications and submit a PR.
