*Settings*
Documentation           RabbitMQ Helpers API

*Variables*
${RABBIT_URL}           https://beaver.rmq.cloudamqp.com/api/queues/fbjicinw/email
&{RABBIT_HEADERS}       Content-Type=application/json   Authorization=Basic ZmJqaWNpbnc6bFFhNFV0cVotVTJNcFlFV1dIVWQzakRETGVWeU5HNWQ=

*Keywords*
Purge Messages

    ${payload}      Create Dictionary
    ...             vhost=fbjicinw
    ...             name=email
    ...             mode=purge

    ${response}     DELETE      ${RABBIT_URL}/contents   json=${payload}     headers=${RABBIT_HEADERS}

    [return]        ${response}

Get Message

    ${payload}      Create Dictionary
    ...             vhost=fbjicinw
    ...             name=email
    ...             truncate=50000
    ...             ackmode=ack_requeue_true
    ...             encoding=auto
    ...             count=1

    ${response}     POST      ${RABBIT_URL}/get   json=${payload}     headers=${RABBIT_HEADERS}

    [return]        ${response.json()}[0]

