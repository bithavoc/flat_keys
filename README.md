# flat_keys

Encodes and Decodes key-value hashes.

## Installation

Add this line to your application's Gemfile:

    gem 'flat_keys'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flat_keys

## Usage

```ruby
    
    require 'flat_keys'
    
    {'name'=>{'fname'=>'John', 'lname'=>'Doe'}}.flat_keys
    #=> {'name.fname'=>'John', 'name.lname'=>'Doe'}
    
    {'name.fname'=>'John', 'name.lname'=>'Doe'}.unflat_keys
    #=> {'name'=>{'fname'=>'John', 'lname'=>'Doe'}}
```

Both `flat_keys` and `unflat_keys` can be used with custom separators.

```ruby

    {'name'=>{'fname'=>'John', 'lname'=>'Doe'}}.flat_keys('$')
    #=> {'name$fname'=>'John', 'name$lname'=>'Doe'}

```

## Tests

    rake

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
