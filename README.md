# robosys2023 plusコマンド
[![test](https://github.com/daitotomita/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/daitotomita/robosys2023/actions/workflows/test.yml)

標準入力から読み込んだ数字に対し、足し算・引き算・掛け算・割り算をする。

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
seq 5 | ./plus
15 : -15 : 120 : 0.0083333333

seq 5 10 |./plus
45 : -45 : 151200 : 6.6138e-06 
```

## 著作権とライセンス
*plusコマンド
  *  このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
  *  このパッケージのコードは、下記スライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
      * [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
  *  © 2023 Daito Tomita

*timereqコマンド
  *  このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
  *  © 2023 Daito Tomita


