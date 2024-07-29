*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${url_pdp}                     https://pontofrio.com.br/-55062339.html
${url_carrinho}                https://carrinho.pontofrio.com.br/
${button_comprar}              xpath=//button[@id="buy-button"]
${button_agora_nao}            xpath=//button[@data-testid="agora_nao"]
${h1_pagina_carrinho}          xpath=//h1[@data-id="text"]
${titulo_carrinho}             Meu carrinho
${card_item_title}             xpath=//*[@id="__next"]/div[1]/main/div[2]/div/section/section[1]/ul/li[1]/article/div[2]/a
${button_remover}              xpath=//button[@data-qa="item-remove"]
${termo_busca}                 TV



*** Keywords ***
Abrir página de produto
    Open Browser    ${url_pdp}   browser=chrome   

Abrir página de carrinho
    Open Browser    ${url_carrinho}   browser=chrome   

Clicar em adicionar produto no carrinho
    Click Button    ${button_comprar}

Clicar em não adicionar serviço
    Click Button    ${button_agora_nao}

Clicar em remover produto do carrinho
    Click Button    ${button_remover}

Validar o redirecionamento para a página de carrinho
    Element Should Contain    ${card_item_title}    expected=${termo_busca}

Validar inclusão do item no carrinho
    Element Should Not Contain    ${card_item_title}    expected=${termo_busca}

Validar remoção do item no carrinho
    Element Should Not Contain    ${card_item_title}    expected=${termo_busca}

