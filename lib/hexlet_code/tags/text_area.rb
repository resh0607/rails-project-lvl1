# frozen_string_literal: true

module HexletCode
  class TextArea
    include TagHelper

    TAG_NAME = 'textarea'

    def initialize(attr_name, object, options = {})
      @attr_name = attr_name
      @attr_value = object.send(attr_name.to_sym)
      @options = options
    end

    def build
      "<#{TAG_NAME}#{options_to_string}>#{yield + "</#{TAG_NAME}>" if block_given?}"
    end

    private

    attr_reader :attr_name, :attr_value, :options

    def default_options
      {
        cols: '20',
        rows: '40',
        name: attr_name
      }
    end
  end
end
