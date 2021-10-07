module HexletCode
  module Tag
    class << self
      def build(tag_name, **options)
        "<#{tag_name}#{options_to_string(options)}>#{yield + "</#{tag_name}>" if block_given?}"
      end

      def options_to_string(options)
        return if options.empty?

        options
          .map { |k, v| "#{k}=\"#{v}\"" }
          .unshift('')
          .join(' ')
      end
    end
  end
end
