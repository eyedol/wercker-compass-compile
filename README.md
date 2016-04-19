# compass-compile

[![wercker status](https://app.wercker.com/status/d0311312ac58f801bdfaa4a9a954e908/m "wercker status")](https://app.wercker.com/project/bykey/d0311312ac58f801bdfaa4a9a954e908)

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