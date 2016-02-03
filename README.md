# Sassc::Image::Size

alternative version of [rails-sass-images.gem](https://github.com/ai/rails-sass-images). but, for [sassc-rails.gem](https://github.com/sass/sassc-rails).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sassc-image-size'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sassc-image-size

## Usage

```scss
.foo-image {
  $foo-image-size: image-size('foo.png');
  width: map-get($foo-image-size, width);
  height: map-get($foo-image-size, height);
}

.bar-image {
  width: image-width('bar.png');
  height: image-height('bar.png');
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sassc-image-size.
