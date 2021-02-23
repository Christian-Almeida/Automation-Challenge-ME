# frozen_string_literal: true

#Classe Auxiliar para mapear alguns botões e ajudar a diminuir a complexidade e legibilidade da classe CadastroConta
class Botoes
  include Capybara::DSL

  def botao_criar_conta
    click_button 'Create an account'
    sleep 3
  end

  def botao_registrar
    click_button 'Register'
    sleep 5
  end
end
