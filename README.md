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

### Rails

```ruby
# config/initializers/sprockets_bower.rb
require 'sprockets/bower'
Sprockets::Bower::Manifest.load(File.join(Rails.root, '.bowerrc')).configure(Rails.application.assets)
```

### Stand-alone

```ruby
# In an initializer file...
require 'sprockets/bower'
bower = Sprockets::Bower::Manifest.load('/my/cool/.bowerrc')
sprockets = Sprockets::Environment.new
bower.configure(sprockets)
```

## Usage

[Install npm](http://nodejs.org/) and [bower](http://bower.io/).

Use bower to install front-end dependencies with your project:

    bower install jquery

And include the asset from your sprockets file:

    //= reqiure jquery/jquery

## Best Practices

Its probably a good idea to keep your bower assets stashed away in the directory `vendor/assets/bower` via the `.bowerrc` file from your project root:

```json
{
  "directory": "vendor/assets/bower",
}
```

Then run:

`bower install`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
