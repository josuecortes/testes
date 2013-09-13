class Celula
  include Mongoid::Document
  include Mongoid::Timestamps

  field :nome, type: String
  field :data_nascimento, type: Date


  belongs_to :igreja
  belongs_to :supervisao

  before_create :setar_igreja
  private
  def setar_igreja
  	self.igreja_id = self.supervisao.igreja_id
  end
end
