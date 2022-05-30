# frozen_string_literal: true

module Resolvers
  class TestResolver < BaseResolver
    type Types::Object::TestType, null: true

    argument :email, String, required: true, validates: { email_format: {} }

    def resolve(email:)
      Rails.cache.fetch(email) do
        # Marshal.dumpは名前付きクラスしか受け付けない
        Struct.new('Test', :name)
        Struct::Test.new('test_name')
      end
    end
  end
end
