module HexletCode
  class Submit
    include TagHelper

    TAG_NAME = 'input'.freeze

    def initialize(**options)
      @options = options
    end

    def build
      "<#{TAG_NAME}#{options_to_string}>#{yield + "</#{TAG_NAME}>" if block_given?}"
    end

    private

    attr_reader :options

    def default_options
      {
        name: 'commit',
        type: 'submit',
        value: 'Save'
      }
    end
  end
end
