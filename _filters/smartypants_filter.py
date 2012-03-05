import smartypants

config = {
    'name': "SmartyPants",
    'description': "Converts quotes and dashes",
    'aliases': ['smartypants']
    }

def run(content):
    return smartypants.smartyPants(content)
