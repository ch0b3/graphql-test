# frozen_string_literal: true

module Resolvers
  class TestResolver < BaseResolver
    type Types::Object::TestType, null: true

    argument :email, String, required: true, validates: { email_format: {} }

    def resolve(input)
      test_struct = Struct.new(:name)
      test_struct.new('test_name')
    end
  end
end
