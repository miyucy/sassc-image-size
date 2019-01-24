require 'dimensions'
require 'sassc'

module SassC
  module Script
    module Functions
      def image_size(path)
        dimensions = Dimensions.dimensions(sprockets_context.depend_on_asset(path.value).filename)
        SassC::Script::Value::Map.new(
          SassC::Script::Value::String.new('width') => SassC::Script::Value::Number.new(dimensions[0], ['px']),
          SassC::Script::Value::String.new('height') => SassC::Script::Value::Number.new(dimensions[1], ['px'])
        )
      end

      def image_width(path)
        SassC::Script::Value::Number.new(
          Dimensions.width(sprockets_context.depend_on_asset(path.value).filename), ['px']
        )
      end

      def image_height(path)
        SassC::Script::Value::Number.new(
          Dimensions.height(sprockets_context.depend_on_asset(path.value).filename), ['px']
        )
      end
    end
  end
end
