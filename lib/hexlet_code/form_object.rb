# frozen_string_literal: true

require 'hexlet_code/tag_builder'
require 'hexlet_code/tags/label'

module HexletCode
  autoload :Input, 'hexlet_code/tags/input'
  autoload :TextArea, 'hexlet_code/tags/text_area'
  autoload :Submit, 'hexlet_code/tags/submit'

  class FormObject
    DEFAULT_TAG = :input

    def initialize(object)
      @object = object
      @inputs = []
    end

    def input(attr_name = nil, **options)
      as_option = options[:as]
      tag_name = as_option || DEFAULT_TAG
      @inputs << Label.new(attr_name).build
      @inputs << TagBuilder.build(tag_name, attr_name, @object, options.except(:as))
    end

    def submit(value = 'Save')
      @inputs << Submit.new(value: value).build
      @inputs.join
    end
  end
end
