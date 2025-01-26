# Timingapp

Ruby client for the database of the [Timing](https://timingapp.com) macOS application. It allows you to read the Timing SQLite database from your local disk and gives you an interface to query it's data.

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

To utilize the `timingapp` gem, `require` it in your project:

```ruby
require "timingapp"
```

Next, initiate database access using:

```ruby
irb(main):001> Timingapp.load!
```

> [!NOTE]
> The `Timingapp.load!` method accepts an optional `path` parameter specifying the location of the SQLite database file.
> It defaults to `"~/Library/Application Support/info.eurocomp.Timing2/SQLite.db"`.
```ruby
irb(main):001> Timingapp.load!("path/to/other/timingapp/database.db")
```

After successfully loading the database, you get access to all the models exposed by the gem. Currently, these models are read-only and are all instances of `ActiveRecord::Base`. 

```ruby
irb(main):002> Timingapp::AppActivity.all
# =>
[
  #<Timingapp::AppActivity:0x000000012131c960 id: 3626854634616737793, localDeviceID: 3, startDate: 1688885798.0, ...>,
  #<Timingapp::AppActivity:0x000000012131c820 id: 3626854892682944513, localDeviceID: 3, startDate: 1688885918.0, ...>,
  #...
]
```

Consequently, you can leverage the ActiveRecord DSL for querying and traversing the models.

```ruby
irb(main):003> activity = Timingapp::AppActivity.find(3686251181653903872)
=> #<Timingapp::AppActivity:0x000000037c09fa18 ...>

irb(main):004> activity.project
=> #<Timingapp::Project:0x000000038831d220
      id: 3627848804833985024,
      title: "StimulusReflex",
      parentID: 3627712234116683008,
      listPosition: 9,
      isSample: false,
      color: "#2D7FFFFF",
      productivityScore: 1.0,
      ...
    >

irb(main):005> activity.project.title
=> "StimulusReflex"

irb(main):006> activity.project.parent.title
=> "Open Source"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/marcoroth/timingapp-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/marcoroth/timingapp-ruby/blob/main/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the Timingapp project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/marcoroth/timingapp-rubyblob/main/CODE_OF_CONDUCT.md).
