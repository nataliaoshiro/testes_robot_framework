*** Settings ***
Resource    ../Pages/homePage.robot


*** Keywords ***
Dado que acesso a pagina da home do ponto frio 
    Abrir página da home  

Quando realizo uma busca por produto
    Realizar busca de produto    

Então a tela da busca deve conter o termo pesquisado
    Validar resultado da busca do produto

Fecha o browser
    Sleep    9
    Capture Page Screenshot
    Close Browser
    
