*** Settings ***
Resource    ../Pages/carrinhoPage.robot

*** Keywords ***
Dado que acesso a pagina de produto e adiciono produto no carrinho
    Abrir página de produto
    Clicar em adicionar produto no carrinho
    Clicar em não adicionar serviço
    
Dado que acesso a pagina de carrinho
    Abrir página de carrinho  

Quando clico no botão de Remover
    Clicar em remover produto do carrinho

Então deverá redirecionar para a página de carrinho
    Validar o redirecionamento para a página de carrinho

E os itens do carrinho deverão conter o produto
    Validar inclusão do item no carrinho

Então o item deverá ser removido do carrinho
    Validar remoção do item no carrinho

Fecha o browser
    Sleep    9
    Capture Page Screenshot
    Close Browser
    
