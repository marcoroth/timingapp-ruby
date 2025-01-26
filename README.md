# Timingapp

Ruby client for the database of the [Timing](https://timingapp.com) macOS application. It allows you to read the TimingApp SQLite database from your local disk and gives you an interface to query it's data.

## Installation

Install the gem and add to the application's `Gemfile` by executing:

```bash
bundle add timingapp
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install timingapp
```

## Usage

First, required the gem in your project:

```ruby
require "timingapp"
```

Then, open the database using:

```ruby
Timingapp.load!
```

Which optionally also takes in an argument (`path`) which is the path to the sqlite database file. It defaults to `"~/Library/Application Support/info.eurocomp.Timing2/SQLite.db"`.

```ruby
Timingapp.load!("path/to/other/timingapp/database.db")
```

And finally, you are able to access all the models this gem exposes. The exposed modules are readonly for now and are all instances of `ActiveRecord::Base`. So you can use the ActiveRecord DSL.

```ruby
Timingapp::AppActivity.all
# =>
[
  #<Timingapp::AppActivity:0x000000012131c960 id: 3626854634616737793, localDeviceID: 3, startDate: 1688885798.0, ...>,
  #<Timingapp::AppActivity:0x000000012131c820 id: 3626854892682944513, localDeviceID: 3, startDate: 1688885918.0, ...>,
  #...
]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/marcoroth/timingapp-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/marcoroth/timingapp-ruby/blob/main/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the Timingapp project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/marcoroth/timingapp-rubyblob/main/CODE_OF_CONDUCT.md).
