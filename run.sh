# gitを使ってアプリケーション設定用のスクリプトをダウンロード
#git clone https://github.com/dotinstallres/centos6.git

# centos6フォルダができるのでそちらに移動
# cd centos6

# スクリプトを実行（時間かかります）
#./run.sh


#!/bin/bash

sudo yum -y update

# スクリプトを入手するためのgitをインストール
sudo yum -y install git

