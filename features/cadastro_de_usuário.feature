#language:pt

Funcionalidade: Criação de Conta 
    Como um Usuário comum visitando a página
    e deseja-se criar uma conta no site
    assim podendo-se fazer compras
    
    Esquema do Cenario: Email Válido 

    Dado que o usuário esteja na pagina de login e deseja criar uma conta
    Quando se insere um email válido <email>
    Então deve se"CREATE AN ACCOUNT".

    Exemplos:
            |email                       |
            |"peter.parker@gmail.com"    |
            |"100@gmail.com"             |
            |"#$?@gmail.com"             |