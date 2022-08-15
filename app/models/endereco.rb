class Endereco < ApplicationRecord
  belongs_to :paciente

  #validações
  validates :cep, :cidade, :bairro, :logradouro, :complemento, presence: true
  validates :cep, length: { is: 8 ,message:"inválido"},numericality: { only_integer: true }
  validates :cidade, length: { in: 6..20 }, format: { with: /\A[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+\z/}
  validates :bairro, length: {in: 4..29}, format: { with: /\A[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+\z/}
  validates :logradouro, length: {in:4..20}, format: { with: /\A[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+\z/}
  validates :complemento, length: {in: 10..30}, format: { with: /\A[a-zA-ZáàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ ]+\z/}

end
