#!/bin/bash
COIN_CHAIN_FILE='grim-blockchain.tar.gz'
COIN_CHAIN='https://node-support.network/bootstrap/'$COIN_CHAIN_FILE
COIN_NAME='GRIM'
COIN_PATH='/root/.GrimMN/'
TMP_PATH='/root/bootstrap_temp/'

mkdir $TMP_PATH
cd $TMP_PATH
echo -e "Downloading and extracting $COIN_NAME blockchain files."
wget -q $COIN_CHAIN
tar -xzvf $COIN_CHAIN_FILE -C $TMP_PATH
rm -rf $COIN_PATH/blk*.dat
rm -rf $COIN_PATH/database
rm -rf $COIN_PATH/smsgDB
rm -rf $COIN_PATH/txleveldb
mv $TMP_PATH/root/Bootstrap/.GrimMN/blk*.dat $COIN_PATH
mv $TMP_PATH/root/Bootstrap/.GrimMN/database $COIN_PATH
mv $TMP_PATH/root/Bootstrap/.GrimMN/smsgDB $COIN_PATH
mv $TMP_PATH/root/Bootstrap/.GrimMN/txleveldb $COIN_PATH
cd ~
rm -r $TMP_PATH