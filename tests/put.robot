*Settings*
Documentation       PUT /partners

Resource            ${EXECDIR}/resources/base.robot

*Test Cases*
Should enable a partner

    ${partner}              Factory Enable Partner

    ${partner_id}           Create a new partner    ${partner}

    ${response}             Enable Partner          ${partner_id}
    Status Should Be        200

Should disable a partner

    ## Definicao da massa
    ${partner}              Factory Disable Partner

    ## Criacao do Parceiro
    ${partner_id}           Create a new partner    ${partner}
    ## Ativando o parceiro
    Enable Partner          ${partner_id}

    ##Recuperando o retorno da desativacao
    ${response}             Disable Partner          ${partner_id}
    ##Validacao Status code
    Status Should Be        200

Should return 404 on enable a partner

    ##Massa de Teste
    ${partner}              Factory 404 Partner

    ${partner_id}           Create a new partner    ${partner}

    Remove Partner By Name  ${partner}[name]

    ${response}             Enable Partner          ${partner_id}
    Status Should Be        404

Should return 404 on Disable a partner

    ##Massa de Teste
    ${partner}              Factory 404 Partner

    ${partner_id}           Create a new partner    ${partner}

    Remove Partner By Name  ${partner}[name]

    ${response}             Disable Partner          ${partner_id}
    Status Should Be        404 
