#language:pt
@test2
Funcionalidade: Criação de Conta 
    Como um Usuário comum visitando a página
    e deseja-se criar uma conta no site
    assim podendo-se fazer compras
    
    @email_val
    Esquema do Cenario: Email Válido 

    Dado que o usuário esteja na página de login e deseja criar uma conta
    Quando se insere um email valido no formulario <code>
    Então devo ver "CREATE AN ACCOUNT" na aréa de criação de conta

    Exemplos:
        | code              |
        | 'superman'        |
        | 'batman'          |
        | 'wonderWoman'     |
        | 'spider'          |

    
    @cadastro_pessoas 
    Esquema do Cenario: Cadastrando Pessoas

    Dado que o usuário esteja na página de login e deseja criar uma conta
    Quando se insere um email valido no formulario <code>
    E preencha com seus dados pessoais <dados>
    Entao devo ver "MY ACCOUNT" na página

    Exemplos:
        | dados          | code         |
        |'superman'      |  'superman'  |
