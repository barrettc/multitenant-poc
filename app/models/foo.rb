class Foo
  include Mongoid::Document
  include Mongoid::Multitenancy::Document

  tenant(:tenant)
  field :bar, type: String
end
