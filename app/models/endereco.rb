class Endereco
  include Mongoid::Document
  include Mongoid::Timestamps 

  field :logradouro, type: String
  field :numero, type: String
  field :bairro, type: String
  field :cidade, type: String
  field :cep, type: String
  field :referencia, type: String
  field :telefone_fixo, type: String
  field :telefone_movel, type: String
  field :fax, type: String
  field :email, type: String

  belongs_to :enderecavel, polymorphic: true

end
