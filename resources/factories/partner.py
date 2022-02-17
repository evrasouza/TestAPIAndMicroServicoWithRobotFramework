
def factory_new_partner():
    partner = {
        'name': 'Pizzas Everton',
        'email': 'contato@pizzaeverton.com.br',
        'whatsapp': '11999999999',
        'business': 'Restaurante'            
    }
    return partner

def factory_remove_partner():
    partner = {
        'name': 'Adega Brito',
        'email': 'contato@adegaBrito.com.br',
        'whatsapp': '17999999999',
        'business': 'Conveniência'            
    }
    return partner

def factory_enable_partner():
    partner = {
        'name': 'Doceria Everton',
        'email': 'contato@doceriaeverton.com.br',
        'whatsapp': '17999999999',
        'business': 'Restaurante'            
    }
    return partner

def factory_disable_partner():
    partner = {
        'name': 'Mercado Noite',
        'email': 'contato@mnoite.com.br',
        'whatsapp': '17999999999',
        'business': 'Supermercado'            
    }
    return partner

def factory_404_partner():
    partner = {
        'name': 'Frangao Everton',
        'email': 'contato@frangaoeverton.com.br',
        'whatsapp': '17999999999',
        'business': 'Restaurante'            
    }
    return partner

def factory_dup_name():
    partner = {
        'name': 'Adega do Joao',
        'email': 'contato@joao.com.br',
        'whatsapp': '61999999999',
        'business': 'Conveniência'            
    }
    return partner

def factory_partner_list():
    p_list = [
            {
                'name': 'Mercearia da Maria',
                'email': 'contato@maria.com.br',
                'whatsapp': '11888888888',
                'business': 'Conveniência'            
            },
            {
                'name': 'Restaurante Japones',
                'email': 'contato@japones.com.br',
                'whatsapp': '11999998888',
                'business': 'Restaurante'            
            },
            {
                'name': 'Mercadinho Everton',
                'email': 'contato@everton.com.br',
                'whatsapp': '11999994545',
                'business': 'Supermercado'            
            },
            {
                'name': 'Pesto Pizzas',
                'email': 'contato@pesto.com.br',
                'whatsapp': '17999998888',
                'business': 'Restaurante'            
            }
    ]
    return p_list