#import os, sys
import base64
import time
import jwt

secret = 'nQWNixJHJ_jRWd6ZuFY9XJNdt9-gDvqBkpN9b80qHn7ySpCUfTdwIm0F85UZgbB4'

# Expiry time for the application token is now set to be
# 60 sec, 60 min, 24 hours, 7 days, 4 weeks = month

signature = base64.b64decode(secret.replace("_", "/").replace("-", "+"))
token = jwt.encode({
    "user_id": "PSAMA_APPLICATION|PICSURE",
    "sub": "PSAMA_APPLICATION|8b5722c9-62fd-48d6-b0bf-4f67e53efb2b",
    "exp": int(time.time())+(60*60*24*7*4),
    "iat": int(time.time())
    },
    secret,
    algorithm='HS256'
)
print(token.decode('utf-8'))
