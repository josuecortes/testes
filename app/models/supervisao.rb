class Supervisao
  include Mongoid::Document
  field :nome, type: String

  belongs_to :igreja
  has_many :celulas
end
