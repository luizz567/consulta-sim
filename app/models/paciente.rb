class Paciente < ApplicationRecord
  has_one :endereco, dependent: :destroy
  has_many :consultums, dependent: :destroy
  has_many :medicos, through: :consultumsgi

  accepts_nested_attributes_for :endereco, allow_destroy: true

  #validacões:
  validates :nome, :data_nascimento, :cpf, :email, presence: true
  validates :nome, length: {in: 10..50},format: { with: /\A[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+\z/}
  validate :data_nascimento_valida
  validates :cpf, length: { is: 11 ,message:" é inválido"},numericality: { only_integer: true }, uniqueness: true
  validates :email,length: {minimum: 8}, format: { with: URI::MailTo::EMAIL_REGEXP }

  def data_nascimento_valida
    if data_nascimento.present? && data_nascimento > Date.today
      errors.add(:data_nascimento," é inválida")
    end
  end

end
