# DEPRECATED

I recommend you use `Struct.new(..., keyword_init: true)` 

# KStruct

KStruct generates lightweight ruby classes with accessor methods and keyword initializers.  It's intended to be used in similar places to the Standard Library's Struct class.

Unlike Struct, it does not not pollute subclasses with lots of methods.  The constructor and accessor methods are the only methods inherited.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kstruct'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kstruct

## Usage

```ruby
require 'kstruct'

class Barrel < KStruct.new(:fish)
  def shoot!
    fish.pop
  end
end

barrel = Barrel.new fish: [:trout, :salmon, :shark]
barrel.shoot! # => :shark
barrel.shoot! # => :salmon
barrel.shoot! # => :trout
barrel.shoot! # => nil

barrel.fish = [:swedish]
barrel.fish # => [:swedish]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/existentialmutt/kstruct. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
