class Medico < ApplicationRecord
  has_many :consultums, dependent: :destroy
  has_many :pacientes, through: :consultums

  #validações
  validates :nome, :cpf, :email, :especialidade, :crm, presence:true
  validates :nome, length: {in: 10..50},format: { with: /\A[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+\z/}
  validates :cpf, length: { is: 11 ,message:"inválido"},numericality: { only_integer: true }, uniqueness: true
  validates :email, length: {minimum: 8}, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :especialidade, length: {in: 10..50},format: { with: /\A[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+\z/}
  validates :crm, length: { maximum: 10},numericality: { only_integer: true }
end
