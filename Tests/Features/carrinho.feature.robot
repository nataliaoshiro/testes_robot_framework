*** Settings ***
Resource         ../Resources/Steps/carrinhoSteps.robot
Test Setup       Dado que acesso a pagina de produto e adiciono produto no carrinho
Test Teardown    Fecha o browser

*** Test Cases ***
Scenario 2: Abre a página de produto e adiciona item no carrinho
    Então deverá redirecionar para a página de carrinho
    E os itens do carrinho deverão conter o produto

Scenario 3: Remove item do carrinho
    Quando clico no botão de Remover
    Então o item deverá ser removido do carrinho
