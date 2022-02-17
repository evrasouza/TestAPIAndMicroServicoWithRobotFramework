*Settings*
Documentation       POST /partners

Resource            ${EXECDIR}/resources/base.robot

*Test Cases*
Should create a new partner
    #Tag para rodar especificamente o cenario
    [tags]                  happy

    #Excluindo as mensagens da fila do RabbitMQ
    Purge Messages
    
    #Configurando a massa de dados para a criacao do parceiro
    ${partner}              Factory New Partner

    #Removendo parceiro no banco de dados caso ja exista
    Remove Partner By Name  ${partner}[name]

    #Criando o parceiro
    ${response}             POST Partner                        ${partner}

    #Validando o status code da criacao do parceiro
    Status Should Be        201
    #Buscando parceiro pelo nome e guardando o resultado na variavel ${result}
    ${result}               Find Partner By Name                ${partner}[name]
    #Comparando se o id do parceiro criado e igual ao pareiro buscado apos a criacao 
    Should Be Equal         ${response.json()}[partner_id]      ${result}[_id]

    #Buscando a mensagem de email enviada para a fila do RabbitMQ
    ${message}              Get Message
    Log                     ${message}[payload]

    Should Contain          ${message}[payload]     ${partner}[email]

Should return duplicate company name
    [tags]                  scenario2

    ${partner}              Factory Dup Name

    Create a new partner    ${partner}

    ${response}             POST Partner  ${partner}
    Status Should Be        409
    Should Be Equal         ${response.json()}[message]      Duplicate company name

