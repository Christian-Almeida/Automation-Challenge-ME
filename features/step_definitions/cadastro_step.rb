# frozen_string_literal: true
###Steps para cumprir os casos de teste

### Email Válido: Step utilizado para preencher e verficar o campo de criação de conta
### antes ele verifica se o email é válido para a criação de conta
Dado('que o usuário esteja na página de login e deseja criar uma conta') do
        @Login_page.pagina
end

Quando('se insere um email valido no formulario {string}') do |email_code|
        file = YAML.load_file(File.join(Dir.pwd, 'features/fixtures/dados_usuarios.yaml'))
        @dado = file[email_code]

        @Cadastro_page.inserir_email(@dado['email'])
        @botao.botao_criar_conta
end

Então('devo ver {string} na aréa de criação de conta') do |expect_conta|
        expect(find('#center_column > div#noSlide h1').text).to eql expect_conta
end



#### Cadastro: Step utilizado para simular um teste de preenchimento de usuário com sucesso
### informando os dados pessoais do usuário
Quando("se insere um email valido no formulario") do
        @Cadastro_page.inserir_email(@dado['email'])
        @botao.botao_registrar
end
Quando('preencha com seus dados pessoais {string}') do |dados|
        file = YAML.load_file(File.join(Dir.pwd, 'features/fixtures/dados_usuarios.yaml'))
        @dados = file[dados]

        @Cadastro_page.genero(@dados['Genero'])

        @Cadastro_page.dados_pessoais(
                                     @dados['Nome'],
                                     @dados['Sobrenome'],
                                     @dados['password'])

        @Cadastro_page.endereco(
                                 @dados['Endereço'],
                                 @dados['Cidade'],
                                 @dados['PostalCode'],
                                 @dados['MobilePhone'],
                                 @dados['Alias'],
                                 @dados['Estado'])

        @botao.botao_registrar
end

Entao('devo ver {string} na página') do |expect_minhaConta|
    expect(@Alertas.alertaSucesso).to eql expect_minhaConta
end
