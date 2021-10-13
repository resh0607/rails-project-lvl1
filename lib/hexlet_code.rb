require 'hexlet_code/version'
require 'hexlet_code/tag_helper'
require 'hexlet_code/tags/form'
module HexletCode
  class Error < StandardError; end

  class << self
    def form_for(object, **options, &block)
      form = Form.new(object, options)
      form.build(&block)
    end
  end
end
