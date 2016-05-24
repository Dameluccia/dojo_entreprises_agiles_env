DATABASES = {
    'default': {
        'NAME': 'dojoagile',
        'ENGINE': 'django.db.backends.mysql',
        'USER': 'root',
        'PASSWORD': 'root',
        'HOST': '/Applications/MAMP/tmp/mysql/mysql.sock',
        'PORT': '8888',
    }
}

# import os
#
# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.sqlite3',
#         'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
#     }
# }
# DATABASES = {
#     'default': {
#         'NAME': '<NomDeVotreBDD>',
#         'ENGINE': 'django.db.backends.mysql',
#         'USER': '<IDENTIFIANT>',
#         'PASSWORD': '<MDP>'
#     }
# }
