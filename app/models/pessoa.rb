class Pessoa
  include Mongoid::Document
  include Mongoid::Timestamps
  	
  field :nome, type: String
  field :data_nascimento, type: Date
  field :sexo, type: String

  belongs_to :user
end
