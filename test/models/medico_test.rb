require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test 'Salvar medico com o crmn invalido' do
    medico = Medico.new nome: 'Romario Abilio', cpf: '12192003289', email: 'romario.567@hotmail.com', especialidade: 'Ortopedista', crm: '124567890l'
    assert_not medico.save
  end
  test 'Salvar medico com os dados corretos' do
    medico = Medico.new nome: 'Jonathan Mendes', cpf: '82192003481', email: 'mendes.567@hotmail.com', especialidade: 'Cardiologia', crm: '1245678907'
    assert medico.save
  end
end
