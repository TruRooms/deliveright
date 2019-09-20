# Deliveright
[![Build Status](https://travis-ci.org/TruRooms/deliveright.svg?branch=master)](https://travis-ci.org/TruRooms/deliveright) [![Maintainability](https://api.codeclimate.com/v1/badges/8db4e7c46a2d07f5b27b/maintainability)](https://codeclimate.com/github/TruRooms/deliveright/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/8db4e7c46a2d07f5b27b/test_coverage)](https://codeclimate.com/github/TruRooms/deliveright/test_coverage)

A simple Ruby API wrapper around the Deliveright API.

Still in beta form, use at your own risk!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'deliveright'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install deliveright

## Usage

Configure the Deliveright Wrapper. For Rails, should go in an initializer.
```ruby
Deliveright.client_id     = 'planet_express'
Deliveright.client_secret = 's3cr37'
Deliveright.user_name     = 'bender@planetexpress.com'
Deliveright.password      = 'benderisgreat'
# Optional for use in the non-prod env.
Deliveright.sandbox       = true
```

### Orders

#### Find

```ruby
client.orders.find('123456789')
```

#### **TODO:** Create
```ruby
client.orders.create()
```

#### **TODO:** Create Delivery Note
```ruby
client.orders.create_delivery_note()
```

#### **TODO:** Create Order Note
```ruby
client.orders.create_order_note()
```

#### **TODO:** Update Customer Info
```ruby
client.orders.update_customer_info()
```

#### **TODO:** Destroy
```ruby
client.orders.destroy()
```

#### **TODO:** Bill of Lading
```ruby
client.orders.bill_of_lading()
```

#### **TODO:** Shipping Labels
```ruby
client.orders.shipping_labels()
```

#### **TODO:** Create Line Item
```ruby
client.orders.create_line_item()
```

#### **TODO:** Destroy Line Item
```ruby
client.orders.destroy_line_item()
```

### Shipping Quote

#### By Weight
```ruby
# Gets a shipping quote by weight.
# @param [Hash] opts the options to create a message with.
# @option opts [String] :zip Destination Zip
# @option opts [String] :weight
# @option opts [String] :service_level
# @option opts [String] :pickup_region
# @option opts [String] :retailer_identifier
# @return [Deliveright::ShippingQuote]
Deliveright::ShippingQuote.by_weight('500')
```

#### By Cubes
```ruby
# Gets a shipping quote by cube.
# @param [Hash] opts the options to create a message with.
# @option opts [String] :zip Destination Zip
# @option opts [String] :cubes
# @option opts [String] :service_level
# @option opts [String] :pickup_region
# @option opts [String] :retailer_identifier
# @return [Deliveright::ShippingQuote]
Deliveright::ShippingQuote.by_cube('10')
```

### Scheduling

#### **TODO:** Availability
```ruby
client.scheduling.availability('11100')
```

## Roadmap
* Implement data changing (PUT, POST, DELETE) methods for orders
* Finish Unit Tests.
* Integrate CI
* Cleanup Comments

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/deliveright. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the Deliveright project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/deliveright/blob/master/CODE_OF_CONDUCT.md).
