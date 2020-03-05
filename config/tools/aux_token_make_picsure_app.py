#
# This script will create an JWT token for PICSURE application
# with a given secret and resource id from the UNIX environment
#
#
import os, sys
import base64
import time
import jwt

secret = os.getenv('CLIENT_SECRET')

# Expiry time for the application token is now set to be
# 60 sec, 60 min, 24 hours, 7 days, 4 weeks = ~1 month
signature = base64.b64decode(secret.replace("_", "/").replace("-", "+"))
token = jwt.encode({
    "user_id": "PSAMA_APPLICATION|PICSURE",
    "sub": "PSAMA_APPLICATION|{}".format(os.getenv('RESOURCE_ID')),
    "exp": int(time.time())+(60*60*24*7*4),
    "iat": int(time.time())
    },
    secret,
    algorithm='HS256'
)
print(token.decode('utf-8'))
