module HexletCode
  class TagBuilder
    class << self
      def build(tag_name, attr_name, object, options = {})
        tag = tag_to_class_name[tag_name].new(attr_name, object, options)
        tag.build
      end

      def tag_to_class_name
        {
          input: Input,
          text: TextArea
        }
      end
    end
  end
end
