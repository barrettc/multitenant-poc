class Game
  include Mongoid::Document

  field :date, type: Time
  field :maxPlayers, type: Integer
  field :minPlayers, type: Integer
  field :playerIds, type: Hash, default: Hash.new
  field :waitingListIds, type: Hash, default: Hash.new
  field :host, type: String
  embeds_one :address
  index({ date: 1 })
end
