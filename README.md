# Deliveright

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

Create a new instance of the Deliveright Client
```ruby
# @param [Hash] opts Options as specified in the Deliveright API docs.
# @option opts [String] :client_id
# @option opts [String] :client_secret
# @option opts [String] :user_name
# @option opts [String] :password
client = Deliveright::Client.new({
  client_id: 'secret',
  client_secret: 'super_secret',
  user_name: 'frye',
  password: 'benderisgreat'})
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
quote = client.shipping_quote.by_weight('500')
```

#### By Cubes
```ruby
quote = client.shipping_quote.by_cube('100')
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
