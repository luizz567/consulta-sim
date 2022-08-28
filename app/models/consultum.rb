class Consultum < ApplicationRecord
  belongs_to :paciente
  belongs_to :medico

  #validações
  validates :data, :horario, :paciente_id, :medico_id, presence:true
  validate :data_valida
  validate :horario_correto
end

def data_valida
  if data.present? && data < Date.today
    errors.add(:data," é inválida")
  end
end

def horario_correto
  if %w[08:00 09:00 10:00 11:00 14:00 15:00  16:00 17:00].exclude? horario
    errors.add(:horario, "é inválido")
  end
end



