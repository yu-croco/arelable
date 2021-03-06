# Arelable

Welcome to Arelable gem!

You are thinking that it is not cool to write raw SQL in Rails, aren't you?

Then just use this gem.
Arelable is a simple SQL wrappers for Rails to help you not to write raw SQL, like Arel.

*Arel is not recommended to be used in your application logics because it is private method of Rails.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'arelable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arelable

## Usage

All you have to do is install this RubyGem!
Then you can use the following feature.


### gt

```ruby
User.gt(:age, 35)
# => SELECT COUNT(*) FROM `users` WHERE (age > 35)
```

### gteq
```ruby
User.geteq(:age, 35)
# => SELECT COUNT(*) FROM `users` WHERE (age >= 35)
```

### lt
```ruby
User.lt(:age, 35)
# => SELECT COUNT(*) FROM `users` WHERE (age < 35)
```

### lteq
```ruby
User.lteq(:age, 35)
# => SELECT COUNT(*) FROM `users` WHERE (age <= 35)
```

### bw
```ruby
User.bw(:age, [35, 40])
# => SELECT COUNT(*) FROM `users` WHERE (age BETWEEN 35 AND 40)
```

### matches
```ruby
User.all_matches(:name, "o")
# => SELECT COUNT(*) FROM `users` WHERE (first_name LIKE '%o%')

User.forward_matches(:name, "Bo")
# => SELECT COUNT(*) FROM `users` WHERE (first_name LIKE 'Bo%')

User.backward_matches(:name, "ob")
# => SELECT COUNT(*) FROM `users` WHERE (first_name LIKE 'ob%')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies.

Then, create database as following.

```
$ mysql -u root -p
$ CREATE DATABASE areable_test CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
```

Then, run `bin/spec` to run the tests.

You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/arelable. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Arelable project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/arelable/blob/master/CODE_OF_CONDUCT.md).
