# compass-config

A [Compass](http://compass-style.org/) plugin for accessing the 
[Compass configuration properties](http://compass-style.org/help/tutorials/configuration-reference/#configuration-properties) inside your scss/sass files.

## Installation

```bash
gem install compass-config
```

To load the plugin, simply require it at the top of your configuration file:

```ruby
require 'compass-config'
```

Next, import the `_compass-config.scss` partial into your stylesheets:

```sass
@import 'compass-config';
```

## Example usage

This plugins registers a function, `x-config`, which allows you to fetch any of 
the Compass configuration properties. It accepts the property name as a single 
parameter and returns a string representation of its corresponding value.

e.g.:

```sass
$environment: x-config('environment');

@if $environment == 'development' {
    // development only styles
}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
