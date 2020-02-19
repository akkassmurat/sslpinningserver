#!/bin/bash 
 
pass : test

#Create Certificate
openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365

 
#Extract Public Keys
python get_pin_from_certificate.py cert.pem
