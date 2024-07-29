# Automação com Robot Framework
Automação de Teste para validar a aplicação pontofrio.com.br, utilizando robotframework. 


## Configurações necessárias para a instalação do projeto
1. Realizar o download e instalação do [Python](https://www.python.org/downloads/ "Python").
2. A instalação pode ser checada através do comando:

    `pip --version`

3. Instalar  o Robot Framework.

    `pip install robotframework`
    
4. Instalar Selenium Library.

    `pip install robotframework-seleniumlibrary`
    
5. Realizar o download e instalação do VSCode [VSCode](https://code.visualstudio.com/docs/?dv=osx "VSCode").

6. Instalar um extensão para do VSCode's Marketplace, para dar suporte ao Robot Framework.


## Estrutura do projeto
```
|- testes_robot_framework/                            // Pasta raiz do projeto
  Tests                                               // Arquivos de testes
  |- Features/*.robot                                 // Cenários de casos de teste em gherkin
  |- Resource
    |-Pages/*.robot                                   // Variáveis e comandos de tela
    |- Steps/*.robot                                  // Métodos de negócio da aplicação
|- results                                            // Resultados dos testes serão salvos
|- .gitignore                                         // Excluí arquivos e repositórios desnecessários
|- README.md                                          // Guia e informações do projeto
```

## Como utilizar
Após realizar todas as instalações e configurações necessárias descritas acima, abra a pasta de projeto no terminal de comandos e digite o seguinte comando para rodar a aplicação:

    `robot -d results ./`

Para executar um caso de teste específico, é necessário executar conforme abaixo:

    `robot -d results -t "<nome_cenário_de_teste>" ./
    `robot -d results <diretório/arquivo_de_teste>

Para dúvidas ou maiores informações: 

``robot --help``. Para acessar o manual completo [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html "Robot Framework User Guide").
