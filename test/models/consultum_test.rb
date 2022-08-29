require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  test 'Criar consulta com dados corretos' do
    paciente = Paciente.new nome: 'Luiz Gustavo', data_nascimento: '19-05-1999', cpf: '12392103588', email: 'luiz.567@hotmail.com'
    assert paciente.save
    medico = Medico.new nome: 'Ricardo Alegre', cpf: '12392903581', email: 'ricardo.567a@hotmail.com', especialidade: 'Neurologista', crm: '7657891230'
    assert medico.save
    consulta = Consultum.new data: Date.today, horario: '16:00', paciente_id: paciente.id, medico_id: medico.id
    assert consulta.save
  end
  test 'Criar consulta vazia' do
    paciente = Paciente.new nome: 'Jose Louredo', data_nascimento: '11-05-1979', cpf: '12292193588', email: 'jose.567@hotmail.com'
    assert paciente.save
    medico = Medico.new nome: 'Henry Cavil', cpf: '22392973511', email: 'henry.567a@hotmail.com', especialidade: 'Gastroenterologia', crm: '7757811230'
    assert medico.save
    consulta = Consultum.new
    assert_not consulta.save

  end


end
