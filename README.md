# Automation Challenger - ME

Desafio de Automação de Testes onde necessitava-se automatizar uma feature de Login

# Tecnologias Utilizadas
* **Ruby :** Linguagem de Programação 
* **Rspec :** Ferramenta de teste utilizada para fazer asserções
* **Capybara :**  Ferramenta utilizada para automatizar cenários de testes 
* **Selenium-WebDriver :** Tecnologia utilizada para simular as ações de um usuário em um Browser
* **Cucumber**: Junto com a sua linguagem (Gherkin) podem ser utilizados para escever historias de usuário, assim tornando-se possível usar BDD
* **Builder Reporter**: Usado para a criação de relatórios em json ou html

## Descrição e Instalação

Para começar, prepara-se o ambiente, instale as dependências:
* Ruby								
* ChromeDriver
* Bundle
### Criar um projeto ou uma nova pasta na máquina
1.  Abra a pasta em um terminar e digite : ***bundle init*** para inicializar o projeto
2. Irá ser gerado um arquivo **Gemfile*** , dentro dele coloque as dependências:
		
		source "https://rubygems.org"
		
		gem 'capybara', '3.18.0'
		gem 'cucumber', '3.1.2'
		gem 'rspec', '3.9.0'
		gem 'selenium-webdriver', '3.142.0'
		gem 'chromedriver-helper'
		gem 'report_builder'`
		
3. Execute ***bundle install*** e ***cucumber --init*** respectivamente
4. O Cucumber irá gerar toda a estrutura necessária das pastas(Features>Steps e Suporte)
5. Abra o arquivo ***Env.rb*** e configure-o
6. Agora pode-se começar a escrever os casos de testes com BDD usando o Cucumber, raiz do projeto cria-se um arquivo com o nome  ***Login.feature***.
7. Estrutura Básica de uma estória de usuário

		Funcionalidade: Nome_da_funcionalidade
			Dado que  <pre-condição>
			Quando 	  <ação esperando algum resultado>
			Entao	  <saída esperada>
8. Na linha de comando executar **Cucumber**, assim  o browser irá ser controlado pelo Selenium
9. Assim irá se criar os steps necessários para o funcionamento

## Funcionamento
 O projeto foi dividido em duas historias de usuário ou features.
 
 A primeira sendo Login onde alguns casos de Testes foram aplicados como "Login com Sucesso", "Login Inválido" e "Login Vazio" para indicar os campos vazios.
 
O segundo foi em cadastramento do usuário, onde antes deveria ver se o usuário possui um email válido para poder se cadastrar.  Nesse caso em especifico foi utilizado uma massa de teste com Yarml para poder escrever algumas massas de teste.

O projeto foi aplicado com Page Objects separando os Steps e seus métodos em classes para ajudar a complexidade do código. Ao final de cada caso de testes uma screenshot era tirada e um relatório em html ou json foi gerado


