class Consultum < ApplicationRecord
  belongs_to :paciente
  belongs_to :medico

  #validações
  validates :data, :horario, :paciente_id, :medico_id, presence:true
  validate :data_valida
end

def data_valida
  if data.present? && data < Date.today
    errors.add(:data," é inválida")
  end
end
