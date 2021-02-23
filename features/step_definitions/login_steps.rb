# frozen_string_literal: true

### Steps utilizados para testar a funcionalidade de login
Dado('que estou na página de login') do
  @Login_page.pagina
end

# Quando("o usuário faz login com {string} e {string}") do |email, senha|
#     file = YAML.load_file(File.join(Dir.pwd, 'features/fixtures/dados_usuarios.yaml'))
#     @usuarioEmail=file[email]
#     @usuarioSenha=file[senha]
#     @Login_page.preencher(@usuarioEmail['email'], @usuarioSenha['password'])
# end

Quando('o usuário faz login com {string} e {string}') do |email, senha|
  @Login_page.preencher(email, senha)
end

Então('devo ver {string} na área logada') do |expect_sucesso|
  expect(@Alertas.alertaSucesso).to eql expect_sucesso
end

Então('devo ver um alerta indicando login Inválido {string}') do |expect_invalido|
  expect(@Alertas.alertaInvalido).to eql expect_invalido
end

Então('devo ver um texto de alerta dizendo que os campos estão vazios {string}') do |expect_vazio|
  expect(@Alertas.alertaVazio).to eql expect_vazio
end
