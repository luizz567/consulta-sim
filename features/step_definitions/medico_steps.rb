Given('estou na pagina do medico') do
  visit '/medicos/'
  expect(page).to have_current_path('/medicos/')
end

Given('o medico com crm {string} existe') do |crm|
  visit '/medicos/new'
  fill_in 'medico[nome]', :with => 'Augusto Cesar'
  fill_in 'medico[cpf]', :with => '12690012390'
  fill_in 'medico[email]', :with => 'cesar.567@hotmail.com'
  fill_in 'medico[especialidade]', :with => 'Ortopedista'
  fill_in 'medico[crm]', :with => crm
  click_on 'Create Medico'
  expect(page).to have_content(crm)
  visit '/medicos/'
  expect(page).to have_current_path(/medicos/)


end

Given('eu clico em mostrar o medico com crm {string}') do |crm|
  click_on "#{crm}"

end

Given('eu clico em editar o cadastro do medico') do
  click_on 'Edit this medico'
end

When('eu preencho os dados nome {string}, cpf {string}, email {string}, especialidade {string}, crm {string}') do |nome, cpf, email, especialidade, crm|
  fill_in 'medico[nome]', :with => nome
  fill_in 'medico[cpf]', :with => cpf
  fill_in 'medico[email]', :with => email
  fill_in 'medico[especialidade]', :with => especialidade
  fill_in 'medico[crm]', :with => crm
end

When('eu clico no botao de atualizar medico') do
  click_button 'Update Medico'
end

Then('eu vejo a mensagem de que o medico foi atualizado com sucesso') do
  expect(page).to have_content('Medico was successfully updated')
end

#segundo cenario
Then('eu vejo a mesagem de que o cpf nao e um numero') do
  expect(page).to have_content('Cpf is not a number')
end