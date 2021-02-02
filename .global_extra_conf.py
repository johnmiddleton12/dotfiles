def Settings( **kwargs ):
    language = kwargs['language']
    if language == 'java':
        return {
                'ls': { 
                    'java.format.settings.url': 'file:///home/jp/.formatSettings.xml',
                      },
                }
                
