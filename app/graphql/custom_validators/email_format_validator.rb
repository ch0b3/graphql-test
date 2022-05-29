# frozen_string_literal: true

module CustomValidators
  class EmailFormatValidator < GraphQL::Schema::Validator::FormatValidator
    def validate(_object, context, _value)
      @with_pattern = /\A([a-zA-Z0-9]+)([a-zA-Z0-9\._\-\+]*)@([a-zA-Z0-9]+)([a-zA-Z0-9\._\-]+)\z/
      return unless super

      context.add_error(GraphQL::ExecutionError.new('不正なメールアドレス形式です', extensions: { code: 'invalid_email_format' }))
    end
  end
end
