# frozen_string_literal: true

module CustomValidators
  class EmailFormatValidator < GraphQL::Schema::Validator::FormatValidator
    def validate(_object, context, _value)
      @with_pattern = /\A([a-zA-Z0-9]+)([a-zA-Z0-9\._\-\+]*)@([a-zA-Z0-9]+)([a-zA-Z0-9\._\-]+)\z/
      return unless super

      error_object = GraphqlErrors::Error.new(code: Types::Enum::ErrorCodeType::INVALID_ARGUMENT_EMAIL_FORMAT)
      context.add_error(GraphQL::ExecutionError.new(error_object.message, extensions: { code: error_object.code }))
    end
  end
end
