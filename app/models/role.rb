class Role
  include Mongoid::Document
  field :nome, type: String
  field :descricao, type: String

  has_and_belongs_to_many :users
end
