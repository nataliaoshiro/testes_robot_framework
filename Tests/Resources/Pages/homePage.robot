*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}                        https://pontofrio.com.br/
${input_busca}                id=search-form-input
${link_login}                 xpath=//*[@id="__next"]/div/div[2]/header/div[1]/div/div[4]/div/a
${button_lupa}                xpath=//button[@data-testid="search-form-button"]
${text_termo_buscado}         xpath=//*[@id="testeScroll"]/div/div/div/div/div[1]/div/div/ul/li/div/div/h1
${termo_busca}                TV


*** Keywords ***
Abrir página da home
    Open Browser    ${url}   edge   

Realizar busca de produto
    Input Text    ${input_busca}    ${termo_busca}
    Click Button    ${button_lupa} 
    
Validar resultado da busca do produto
    Element Should Contain    ${text_termo_buscado}    expected=${termo_busca}


