Feature: Paciente
  As a paciente
  I want to adicionar, remover visualizar e editar meu cadastro
  So that eu nao tenho que fazer isso de forma manual ou presencial

  Scenario: cadastrar paciente
    Given estou na pagina do paciente
    And eu clico em criar novo paciente
    When eu preencho os dados nome 'Luiz Gustavo' data_nascimento '19-04-1999' cpf '12692003489' email 'martins.567@hotmail.com' cep '56515250' cidade 'Arcoverde' bairro 'Sao Geraldo' logradouro 'Rua b' complemento 'casa de esquina'
    And eu clico no botao de criar paciente
    Then eu vejo a mensagem de que o paciente foi criado com sucesso

  Scenario: editar informacoes do paciente
    Given estou na pagina do paciente
    And o paciente com cpf '12692003419' existe
    And eu clico em mostrar o paciente com cpf '12692003419'
    And eu clico em editar o cadastro do paciente
    When eu preencho os dados nome 'Walter da Silva' data_nascimento '19-04-1981' cpf '12692003419' email 'walter.567@hotmail.com' cep '56515250' cidade 'Arcoverde' bairro 'Sao Cristovão' logradouro 'Rua A' complemento 'casa de esquina'
    And eu clico no botao de atualizar paciente
    Then eu vejo a mensagem de que o paciente foi atualizado com sucesso
