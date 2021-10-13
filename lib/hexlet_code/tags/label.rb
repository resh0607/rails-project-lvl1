# frozen_string_literal: true

module HexletCode
  class Label
    include TagHelper

    TAG_NAME = 'label'

    def initialize(attr_name, options = {})
      @attr_name = attr_name
      @options = options
    end

    def build
      "<#{TAG_NAME}#{options_to_string}>#{attr_name.capitalize}</#{TAG_NAME}>"
    end

    private

    attr_reader :attr_name, :options

    def default_options
      {
        for: attr_name
      }
    end
  end
end
