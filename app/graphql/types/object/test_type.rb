module Types::Object
  class TestType < Types::BaseObject
    field :name, String, null: false #, directives: { GraphQL::Schema::Directive::Flagged => { by: 'staff'} }, visible_user: 'staff'

    # directive Directives::Permission, level: "manager"
    # directive GraphQL::Schema::Directive::Flagged, by: 'staff'

    # def self.visible?(context)
    #   Random.new.rand(0..1) == 0 ? true : false
    #   false
    # end

    def name
      object.name
    end
  end
end