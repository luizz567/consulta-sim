require "test_helper"

class PacienteTest < ActiveSupport::TestCase

  test 'Salvar paciente com o nome invalido' do
    paciente = Paciente.new nome: 'Luiz Gus1tavo', data_nascimento: '19-04-1999', cpf: '12692003489', email: 'martins.567@hotmail.com'
    assert_not paciente.save
  end

  test 'Salvar paciente com dados corretos' do
    paciente = Paciente.new nome: 'Genaro Leite', data_nascimento: '24-09-1967', cpf: '12692173489', email: 'genaro.567@hotmai.com'
    assert paciente.save
  end

end
