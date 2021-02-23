# frozen_string_literal: true

# Contexto usado paara acessar a pagina home e clickar no Sign in
Dado('que o usuário esteja na página de autenticação e deseje criar uma conta') do
  visit 'http://automationpractice.com/index.php'
  find('.header_user_info .login', text: 'Sign in').click
end

Dado('que o usuário esteja no formulário de criação de conta') do
    page.has_css?('.navigation_page', text:'Authentication')
end

Quando('se insere um email válido {string}') do |email|
  find('input[name=email_create]').set email
end

Quando("clique no botão para criar um usuário") do
    find('#SubmitCreate').click
  end

Então("deve ser redirecionado para a página contendo um título {string}.") do |texto|
    mensagem = find('#center_column #noSlide .page-heading').text
    expect(mensagem).to include texto
  end
