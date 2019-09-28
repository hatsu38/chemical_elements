# ChemicalElements

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chemical_elements'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chemical_elements

## Usage

### Load Library
```
require 'chemical_elements'
```

### Seach by chemical element symbol
```
element = ChemicalElements::PeriodicTable.find('H')
# => #<ChemicalElements::PeriodicTable:0x00007fb2f3059490 @name="Hydrogen", @symbol="H", @atomic_num=1, @atomic_amount=1.00798>

element.name
# => "Hydrogen"

element.symbol
# => "H"

element.atomic_num
# => 1

element.atomic_amount
# => 1.00798
```

### Search by chemical element name and symbol, atomic_num, atomic_amount
```
ChemicalElements::PeriodicTable.find_by(name: 'Hydrogen')
ChemicalElements::PeriodicTable.find_by(symbol: 'H')
ChemicalElements::PeriodicTable.find_by(atomic_num: 1)
ChemicalElements::PeriodicTable.find_by(atomic_amount: 1.00798)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hatsu38/chemical_elements. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ChemicalElements project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/chemical_elements/blob/master/CODE_OF_CONDUCT.md).
