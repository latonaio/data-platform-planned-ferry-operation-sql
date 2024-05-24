# data-platform-planned-ferry-operation-sql 

data-platform-planned-ferry-operation-sql は、データ連携基盤において、計画フェリー運行データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-planned-ferry-operation-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-planned-ferry-operation-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-planned-ferry-operation-sql-header-data.sql（データ連携基盤 計画フェリー運行 - ヘッダデータ）
* data-platform-planned-ferry-operation-sql-item-data.sql（データ連携基盤 計画フェリー運行 - 明細データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
