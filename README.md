****Automação
Dado que eu já tenho em meu notebook todas as ferramentas instaladas, tais como, vscode, cmder, Ruby, chromedriver, quando criamos um novo projeto faço apenas as configurações do mesmo, segue abaixo:
=>Ferramentas para desenvolvimento:
•	Vscode 
•	Console Emulator (cmder) 
=>Linguagem:
•	Ruby 2.3.3
=>Ferramentas de Automação:
•	Cucumber 3.1.2
•	Capybara 3.15
•	Selenium WebDriver 3.141
A automação será desenvolvida em BDD com padrão de projeto Page Objective.
    1.	Crie uma pasta no disco C com nome do projeto desafio_inmetrics
    2.	No cmder selecione a pasta cd: C:\desafio_inmetrics
    3.	Instale o gerenciador de dependências com o comando gem install bundle e depois crie a estrutura de pastas com o comando cucumber –init
    4.	No vscode abra a pasta desafio_inmetrics 
    5.	Na pasta desafio_inmetrics crie um arquivo chamado Gemfile com as seguintes configurações:
            source 'http://rubygems.org'
            gem 'capybara'
            gem 'cucumber'
            gem 'httparty'
            gem 'pry'
            gem 'rspec'
            gem 'faker'
            gem 'selenium-webdriver'
    6.	Na pasta suporte > env crie os requerimentos:
            require 'capybara'
            require 'capybara/cucumber'
            require 'httparty'
            require 'pry'
            require 'rspec'
            require 'faker'
            require 'selenium-webdriver'

            Capybara.default_driver = :selenium
            Capybara.default_max_wait_time = 15
            Capybara.register_driver :selenium do |app|
                Capybara::Selenium::Driver.new(app, browser: :chrome)
            end
    7.	No cmder execute o comando bundle para instalar todas as Gems, após isso é gerado o arquivo Gemfile.lock com todas as gems instaladas e suas versões.
    8.	No vscode, dentro da pasta features crie uma estrutura de projetos com as pastas pages, spec e step_definitions:
        A pasta pages ficará todas as pages, a pasta spec todas as features e a step_definitions todos os steps.
    9.	Na pasta spec crie uma feature com nome da funcinalidade, ex.: realizar_compra.feature. Dentro dessa feature crie os BDDs.
    10.	No cmder execute o comando cucumber para gerar os steps. Copie e cole os steps gerados dentro de um arquivo criado na pasta step_definitions com o nome da sua funcionalidade_step.rb
    11.	Na pasta page_object crie o arquivo realizar_compra_page.rb 
        

        Seu projeto estará criado! Boa Sorte! 



        


