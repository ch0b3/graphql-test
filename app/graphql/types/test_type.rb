class Types::TestType < Types::BaseObject
  field :test_field, String, null: false #, visible_user: 'staff', directives: { GraphQL::Schema::Directive::Flagged => { by: 'staff'} }

  # directive Directives::Permission, level: "manager"
  # directive GraphQL::Schema::Directive::Flagged, by: 'staff'

  def self.visible?(context)
    # Random.new.rand(0..1) == 0 ? true : false
    false
  end

  def test_field
    "Hello World!"
  end
end
