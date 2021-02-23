# frozen_string_literal: true

class Alertas
  include Capybara::DSL


  def alertaSucesso
    find('.page-heading').text
  end

  def alertaInvalido
    find('#center_column > div.alert.alert-danger ol li').text
  end

  def alertaVazio
    find('#center_column > div.alert.alert-danger ol li').text
  end
end
