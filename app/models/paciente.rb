class Paciente < ApplicationRecord
  has_one :endereco
  accepts_nested_attributes_for :endereco, allow_destroy: true
end
