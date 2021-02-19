def Settings( **kwargs ):
    if kwargs[ 'language' ] == 'java':
        return {
                'ls' : {
                    "java.format.settings.url": "file:///home/jp/.formatSettings.xml",
                }
            }

