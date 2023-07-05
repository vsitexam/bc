import collections
import datetime
import binascii
import Crypto
import hashlib
from Crypto.PublicKey import RSA
from Crypto import Random
from Crypto.Hash import SHA 
from Crypto.Signature import PKCS1_v1_5

class Client:
    def __init__(self): 
        random = Crypto.Random.new().read
        self._private_key = RSA.generate(1024, random) #create private key
        self._public_key = self._private_key.publickey() #create public key
        self._signer = PKCS1_v1_5.new(self._private_key) #create digital signature
        
    @property 
    def identity(self): 
        return binascii.hexlify(self._public_key.exportKey(format='DER')).decode('ascii')
    
class Transaction: #creating transaction
    def __init__(self, sender, recipient, value): # in python client used to create constructor
        self.sender = sender
        self.recipient = recipient
        self.value = value
        self.time = datetime.datetime.now()
    def to_dict(self): #record identity
        if self.sender == "Genesis": #base block in blockchain
            identity = "Genesis"
        else:
            identity = self.sender.identity
            return collections.OrderedDict({ # inserting in oredered manner \ storing | nothing but an ordered dictionary
            'sender': identity,
            'recipient': self.recipient,
            'value': self.value,
            'time' : self.time})

    def sign_transaction(self): # verify sender and converting into hash value
        private_key = self.sender._private_key
        signer = PKCS1_v1_5.new(private_key)
        h = SHA.new(str(self.to_dict()).encode('utf8'))
        return binascii.hexlify(signer.sign(h)).decode('ascii')

def display_transaction(transaction):
    dict = transaction.to_dict()
    print ("Sender: \n" + dict['sender'])
    print ('------------------------------------------------------------------')
    print ("Recipient: \n" + dict['recipient'])
    print ('------------------------------------------------------------------')
    print ("Value: " + str(dict['value']))
    print ('------------------------------------------------------------------')
    print ("Time: " + str(dict['time']))
    print ('------------------------------------------------------------------')
    
        
transactions = []

Shlok = Client()
Jivesh = Client()
Shreyas = Client()
Himanshu = Client()
    
t1 = Transaction(Shlok, Jivesh.identity, 15.0)
t1.sign_transaction()
transactions.append(t1)

t2 = Transaction(Shreyas, Himanshu.identity,6.0)
t2.sign_transaction()
transactions.append(t2)
    
t3 = Transaction(Jivesh, Shlok.identity,2.0)
t3.sign_transaction()
transactions.append(t3)
    
    
for txn in transactions:
    display_transaction (txn)
    
        
