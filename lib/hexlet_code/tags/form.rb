module HexletCode
  autoload :FormObject, 'hexlet_code/form_object'

  class Form
    include TagHelper

    TAG_NAME = 'form'.freeze

    def initialize(object, options = {})
      @object = object
      @options = options
    end

    def build
      "<#{TAG_NAME}#{options_to_string}>#{yield FormObject.new(object) if block_given?}</#{TAG_NAME}>"
    end

    private

    attr_reader :object, :options

    def default_options
      {
        action: options.fetch(:url, '#'),
        method: 'post'
      }
    end

    def filtered_opts
      [:url]
    end
  end
end
