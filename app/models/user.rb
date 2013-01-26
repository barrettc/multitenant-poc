class User
  include Mongoid::Document

  field :email, type: String
  field :firstName, type: String
  field :lastName, type: String
  field :lastLoginTime, type: Time

  validates_length_of :firstName, minimum: 2
  validates_length_of :lastName,  minimum: 2
  index({ email: 1 })
end