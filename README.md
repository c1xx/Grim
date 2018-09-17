# GRIM bootstrap files for your masternode

Bootstrapping is the process for speeding up the syncing of your wallet.  Syncing is your wallet downloading all transactions from when it was made until now.  You can bootstrap your wallet to give it the file instead of it downloading slowly (syncing).

### To get bootstrap on your VPS/Masternode, follow this steps:
**Notice:** If your GRIM masternode files path is not **_/root/.GrimMN_** change **COIN_PATH='/root/.GrimMN/'** to your location before your start 

1. Login as root and stop your masternode
   ```
   Grimd stop
   ```
   
2. If your GRIM masternode path is not **_/root/.GrimMN_**, change **_COIN_PATH='/root/.GrimMN/'_** variable to your GRIM masternode file location or you'll get problems.

3. Download and start bootstrap script

```
sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/c1xx/Grim/master/bootstrap.sh)"
```

4. Start your GRIM masternode again
   ```
   Grimd -daemon
   ```
   
Now your blockchain is up to date, only a few blocks will be downloaded afterwards.
