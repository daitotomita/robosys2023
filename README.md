# robosys2023 asmd&timereqコマンド
[![test](https://github.com/daitotomita/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/daitotomita/robosys2023/actions/workflows/test.yml)

asmd:標準入力から読み込んだ数字に対し、足し算・引き算・掛け算・割り算をする。

timereq:標準入力から読み込んだ値を時速換算し、東京-大阪・大阪-京都・京都-富山までの移動時間を算出する。

## インストール方法
*  GitHubがインストールされている環境でpythonを導入し、以下のコマンドを入力する。
```
$ git clone https://github.com/daitotomita/robosys2023.git
```
*  以下のディレクトリに移動する。
```
$ cd robosys2023
```
*  asmdの場合以下のコマンドを入力する。
```
$ vi asmd  #ファイルの中身を確認
$ ./asmd   #実行
```
*  timereqの場合以下のコマンドを入力する。
```
$ vi timereq  #ファイルの中身を確認
$ ./timereq   #実行
```

## 必要なソフトウェア
asmd
  * Python
    * テスト済み: 3.7～3.10

timereq
  * Python
    * テスト済み: 3.7～3.10

## テスト環境
asmd
  * Ubuntu 20.04

timereq
  * Ubuntu 20.04

## 使い方
*  任意の数字を標準入力する。
*  以下に実行例を示す。

```
asmd
  $ seq 5 | ./asmd
  15 : -15 : 120 : 0.0083333333

  $ seq 5 10 | ./asmd
  45 : -45 : 151200 : 6.6138e-06 

timereq
  $ ./timereq 30
  30 km/h
  東京ー大阪 16 時間 40 分
  大阪ー京都 1 時間 52 分
  京都ー富山 10 時間 39 分

  $ ./timereq 30 50
  30 km/h
  東京ー大阪 16 時間 40 分
  大阪ー京都 1 時間 52 分
  京都ー富山 10 時間 39 分
  50 km/h
  東京ー大阪 10 時間 0 分
  大阪ー京都 1 時間 7 分
  京都ー富山 6 時間 24 分
```

## 著作権とライセンス
asmdコマンド
  *  このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。

timereqコマンド
  *  このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
  
© 2023 Daito Tomita


