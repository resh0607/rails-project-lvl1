module HexletCode
  module TagHelper
    def default_options
      {}
    end

    def options_to_string
      default_options
        .merge(options.except(*filtered_opts))
        .compact
        .map { |k, v| "#{k}=\"#{v}\"" }
        .unshift('')
        .join(' ')
    end

    def filtered_opts
      []
    end
  end
end
