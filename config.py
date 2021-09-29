import os

w = open('config.json', 'w+')
w.write('{')
w.write('\n')
w.write('    "authToken": "'+os.getenv('BOT_TOKEN')+'",'2028734390:AAGxv38R01DwLAzNF5Tp8R5Db765EuFFylU')
w.write('\n')
w.write('    "owner": '+os.getenv('OWNER_ID','1691209696'))
w.write('\n')
w.write('}')
