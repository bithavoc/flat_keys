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
    
## License (MIT)

Copyright (c) 2012-2014 Bithavoc.io and Contributors - http://bithavoc.io

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.