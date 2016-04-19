# compass-compile

Compile all compass project files into CSS files

## Options

* `config-file`: (required) The config file for compass. Usually the `config.rb` file
* `flags`: (optional) The flags to `compass compile`. `compass help compile` should give you available flags


## Dependencies

* Ruby
* Ruby-dev
* Rubygems
* Compass


## Example

Add this as a step in wercker.yml file:

    - eyedol/compass-compile:
        config-file: $WERCKER_ROOT/public/sass/config.rb
        flags: --output-style compressed


## Changelog

### 0.0.1

- Initial release