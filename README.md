# Hontynoo

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/hontynoo`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add hontynoo

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install hontynoo

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing
### Test
Run all test cases
```
$ rake test
```

Run only specific test case. Below command will run only test cases in the file ./test/test_forecast.rb that contains string `xxx` (`-n` option is stand for "name").
```
$ ruby -Itest ./test/test_forecast.rb -n /xxx/
```

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hontynoo.
