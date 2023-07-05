from bitcoinlib.wallets import Wallet

w = Wallet('Wallet')
#w = Wallet.create('Wallet')
key1 = w.get_key()
print(key1.address)

w.scan()
print(w.info())
