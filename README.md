# Sprockets::Bower

Stop using copy and paste or curl to manage JavaScript and CSS dependencies in your Ruby projects and start using Bower, a JavaScript package manager.

## Installation

Add this line to your application's Gemfile:

    gem 'sprockets-bower', :require => 'sprockets/bower'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sprockets-bower

## Usage

Bootstrap Bower into Sprockets with the following code:

```ruby
# In an initializer file...
require 'sprockets/bower'
bower = Sprockets::Bower::Manifest.load('/my/cool/.bowerrc')
sprockets = Sprockets::Environment.new
bower.configure(sprockets)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
