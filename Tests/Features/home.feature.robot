*** Settings ***
Resource   ../Resources/Steps/homeSteps.robot
Test Teardown    Fecha o browser


*** Test Cases ***
Scenario 1: Abre a home e busca por um produto
    Dado que acesso a pagina da home do ponto frio 
    Quando realizo uma busca por produto
    Então a tela da busca deve conter o termo pesquisado
