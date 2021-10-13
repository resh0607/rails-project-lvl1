module HexletCode
  class Input
    include TagHelper

    TAG_NAME = 'input'.freeze

    def initialize(attr_name, object, options = {})
      @attr_name = attr_name
      @attr_value = object.send(attr_name&.to_sym)
      @options = options
    end

    def build
      "<#{TAG_NAME}#{options_to_string}>#{yield + "</#{TAG_NAME}>" if block_given?}"
    end

    private

    attr_reader :attr_name, :attr_value, :options

    def default_options
      {
        name: attr_name,
        type: 'text',
        value: attr_value
      }
    end
  end
end
