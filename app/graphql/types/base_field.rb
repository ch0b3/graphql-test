module Types
  class BaseField < GraphQL::Schema::Field
    argument_class Types::BaseArgument

    attr_reader :visible_user

    def initialize(*args, visible_user: '', **kwargs, &block)
      super(*args, **kwargs, &block)
      @visible_user = visible_user
    end
  
    def visible?(context)
      super && case visible_user
      when 'staff'
        # context[:current_user]&.role == 'staff'
        true
      when 'admin'
        context[:current_user]&.role == 'admin'
      else
        true
      end
    end
  end
end
