# frozen_string_literal: true

#Classe Responsavel para mapear os principais metodos do usuário com informações pessoais do usuarios
class CadastroConta
  include Capybara::DSL

  #metodo para inserir email no formulário 
  def inserir_email(email)
    find('input[name=email_create]').set email
  end

  #metodo utilizado para escolher sexo do usuário
  def genero(sexo)
    if sexo = 'Masculino'
      find('div[id$=gender1]').click
    else
      find('div[id$=gender2]').click
    end
  end

  #metodo usado para preecher com dados pessoais do usuário
  def dados_pessoais(nome,sobrenome,senha)
    find('input[name*=customer_firstname]').set nome
    find('input[name*=customer_lastname]').set sobrenome
    find('#passwd').set senha
    sleep 3
  end

  #metodo contendo para preencher o endereço do usuário
  def endereco(ender, cidade, zipcode, tel, apelido,texto)
    find('#address1').set ender
    find('#city').set cidade

    find('#postcode').set zipcode
    find('#phone_mobile').set tel

    find('#alias').set apelido
    sleep 5

    estado = find('#id_state')
    estado.find('option', text:texto).select_option
    sleep 3
  end

end
