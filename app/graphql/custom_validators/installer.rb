# frozen_string_literal: true

module CustomValidators
  module Installer
    Dir.glob(File.join(__dir__, '*.rb')).sort.each { |file| require file }

    GraphQL::Schema::Validator.install(:email_format, CustomValidators::EmailFormatValidator)
  end
end