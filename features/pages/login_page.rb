# frozen_string_literal: true

##Classe responsavel por agrupar os metodos da pagina de login  
class LoginPage
  include Capybara::DSL

  #abre a pagina de login
  def pagina
    visit '/'
  end

  #preenche os campos do formulário
  def preencher(email, senha)
    find('#email').set email
    find('input[name=passwd]').set senha
    click_button 'Sign in'
  end

end