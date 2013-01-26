class Address
  include Mongoid::Document

  field :street, type: String
  field :city, type: String
  field :state, type: String
  field :zipCode, type: String

  field :coordinates, type: Array
  field :address, type: String
  include Geocoder::Model::Mongoid
  geocoded_by :address
  after_validation :geocode

  embedded_in :game

  def address
    [street, city, state, zipCode].compact.join(', ')
  end
end
