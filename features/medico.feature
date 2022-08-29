Feature: Paciente
  As a medico
  I want to adicionar, remover visualizar e editar meu cadastro
  So that eu nao tenho que fazer isso de forma manual ou presencial

  Scenario: editar informacoes de medico
    Given estou na pagina do medico
    And o medico com crm '1245678900' existe
    And eu clico em mostrar o medico com crm '1245678900'
    And eu clico em editar o cadastro do medico
    When eu preencho os dados nome 'Jose Antonio', cpf '12690012390', email 'toinho.567@hotmail.com', especialidade 'Ortopedista', crm '1245678900'
    And eu clico no botao de atualizar medico
    Then eu vejo a mensagem de que o medico foi atualizado com sucesso

  Scenario: editar informacoes do cpf do medico incorretamente
    Given estou na pagina do medico
    And o medico com crm '1245678901' existe
    And eu clico em mostrar o medico com crm '1245678901'
    And eu clico em editar o cadastro do medico
    When eu preencho os dados nome 'Jose Antonio', cpf '1269001239L', email 'toinho.567@hotmail.com', especialidade 'Ortopedista', crm '1245678901'
    And eu clico no botao de atualizar medico
    Then eu vejo a mesagem de que o cpf nao e um numero
