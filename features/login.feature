#language:pt

@login
Funcionalidade: Login na conta
    Como um usuário cadastrado no sistema
    desejando-se fazer login na sua conta
    assim acessando sua conta para ver suas informações pessoais

    @login_sucesso
    Cenario: Login com Sucesso
    Dado que estou na página de login
    Quando o usuário faz login com 'testerQaruby@gmail.com' e 'capitao123'
    Então devo ver "MY ACCOUNT" na área logada

    # Exemplos:
    #       | email     | senha       |
    #       |'superman' | 'superman'  |

    @login_invalido
    Esquema do Cenario: Login Inválido
    Dado que estou na página de login
    Quando o usuário faz login com <email> e <senha>
    Então devo ver um alerta indicando login Inválido <alerta>

      Exemplos:
           | email                      | senha             | alerta                       |
           | "usuario"                  | "capitao123"      | "Invalid email address."     |
           | "testerQaruby@gmail.com"   | "ruby123"         | "Authentication failed."     |
          

    @login_vazio
    Esquema do Cenario: Login em Branco
    Dado que estou na página de login
    Quando o usuário faz login com <email> e <senha>
    Então devo ver um texto de alerta dizendo que os campos estão vazios <alerta>

    Exemplos:
         | email                      | senha             | alerta                       |
         | ""                         | "capitao123"      | "An email address required." |
         | "testerQaruby@gmail.com"   | ""                | "Password is required."      |
         | ""                         | ""                | "An email address required." |


