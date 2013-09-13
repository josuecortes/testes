class Igreja

  include Mongoid::Document
  include Mongoid::Timestamps
  

  field :cnpj, type: String
  field :nome, type: String
  
  

  has_many :celulas
  has_many :user
  has_many :supervisao
  has_one :endereco, as: :enderecavel, class_name: "Endereco"

end
