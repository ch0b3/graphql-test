class Directives::Permission < GraphQL::Schema::Directive
  argument :level, String
  locations FIELD, OBJECT
end