# robosys2023 timereqコマンド
[![test](https://github.com/daitotomita/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/daitotomita/robosys2023/actions/workflows/test.yml)

標準入力から読み込んだ値を時速換算し、東京-大阪,大阪-京都,京都-富山までの移動時間を算出する。
をする。

## インストール方法
*  自身のpythonの動く環境に導入する。

## 必要ソフトウェア
* Python
  * テスト済み: 3.7～3.10

## テスト環境
* Ubuntu 20.04

## 使い方
*  任意の数字を標準入力する。
*  以下に実行例を示す。

```
./timereq 30
30 km/h
東京ー大阪 16 時間 40 分
大阪ー京都 1 時間 52 分
京都ー富山 10 時間 39 分

./timereq 30 50
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
*  このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
*  © 2023 Daito Tomita
