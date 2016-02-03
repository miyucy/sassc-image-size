require 'sassc/script/functions'
require 'dimensions'
require 'sass/script/value/map'

module SassC
  module Script
    module Functions
      def image_size(path)
        dimensions = Dimensions.dimensions(sprockets_context.depend_on_asset(path.value).filename)
        Sass::Script::Value::Map.new(Sass::Script::Value::String.new('width') => Sass::Script::Value::Number.new(dimensions[0], ['px']),
                                     Sass::Script::Value::String.new('height') => Sass::Script::Value::Number.new(dimensions[1], ['px']))
      end

      def image_width(path)
        Sass::Script::Value::Number.new(Dimensions.width(sprockets_context.depend_on_asset(path.value).filename), ['px'])
      end

      def image_height(path)
        Sass::Script::Value::Number.new(Dimensions.height(sprockets_context.depend_on_asset(path.value).filename), ['px'])
      end
    end
  end
end
