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
        self._private_key = RSA.generate(1024, random) 
        self._public_key = self._private_key.publickey() 
        self._signer = PKCS1_v1_5.new(self._private_key)         
    @property 
    def identity(self): 
        return binascii.hexlify(self._public_key.exportKey(format='DER')).decode('ascii')
    
class Transaction: 
    def __init__(self, sender, recipient, value):
        self.sender = sender
        self.recipient = recipient
        self.value = value
        self.time = datetime.datetime.now()
        
    def to_dict(self): 
        if self.sender == "Genesis": 
            identity = "Genesis"
        else:
            identity = self.sender.identity
        return collections.OrderedDict({ 
            'sender': identity,
            'recipient': self.recipient,
            'value': self.value,
            'time' : self.time})

    def sign_transaction(self): 
        private_key = self.sender._private_key
        signer = PKCS1_v1_5.new(private_key)
        h = SHA.new(str(self.to_dict()).encode('utf8'))
        return binascii.hexlify(signer.sign(h)).decode('ascii')
 
class Block:
    def __init__(self):
        self.verified_transactions = []
        self.previous_block_hash = ""
        #self.Nonce = ""        
    last_block_hash = ""

def blockchain (self):
        print ("Number of blocks in the chain: " + str(len (self)))
        for x in range (len(SampleCoins)):
            block_temp = SampleCoins[x]
            print ("block # " + str(x))
        for transaction in block_temp.verified_transactions:
            display_transaction (transaction)
            
def display_transaction(transaction):
    dict = transaction.to_dict()
    print ("Sender: " + dict['sender'])
    print ('------------------------------------------------------------------')
    print ("Recipient: \n" + dict['recipient'])
    print ('------------------------------------------------------------------')
    print ("Value: " + str(dict['value']))
    print ('------------------------------------------------------------------')
    print ("Time: " + str(dict['time']))
    print ('------------------------------------------------------------------')


SampleCoins = []

Shlok = Client()
Jivesh = Client()

txn0=Transaction("Genesis",Shlok.identity,10)

block0=Block()
block0.previous_block_hash = None
#Nonce = None
block0.verified_transactions.append(txn0)

last_block_hash = hash(block0)

SampleCoins.append(block0)
blockchain(SampleCoins)


