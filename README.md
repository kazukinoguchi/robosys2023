# robosys2023
* このリポジトリは、Shellにて使用できるコマンドを追加するものです.

## Σ・平均・Πコマンド

[![test](https://github.com/kazukinoguchi/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/kazukinoguchi/robosys2023/actions/workflows/test.yml)

* 標準入力で読み込んだ数値を足した数値、平均値、かけた数値を順番に出力します.

## 必要なソフトウェア
* Python
  * テスト済み: 3.7 ~ 3.10

## テスト環境
* Ubuntu-20.04

## インストール方法
1. このリポジトリを以下のコマンドでダウンロードします.  
`$git clone https://github.com/kazukinoguchi/robosys2023`  
1. robosys2023に移動します.  
`$cd robosys2023`  
1. 実行権限を付与します.  
`$chmod +x ./plus`


## 実行例
### 入力
1~5の整数を順番に入力しています.  
`robosys2023$ seq 5 | ./plus`
### 出力
```bash
15  
3.0  
120
```
## 著作権・ライセンス表示
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
* このパッケージは，Ryuichi Ueda由来のコード（© 2022 Ryuichi Ueda）を利用しています．
* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身が編集し、自身の著作としたものです．
    * https://ryuichiueda.github.io/my_slides/robosys_2022/lesson4.html#/
    * https://ryuichiueda.github.io/my_slides/robosys_2022/lesson5.html#/
    * https://ryuichiueda.github.io/my_slides/robosys_2022/lesson6.html#/
    * https://ryuichiueda.github.io/my_slides/robosys_2022/lesson7.html#/
* © 2023 Kazuki Noguchi

## Special Thanks
* 上田隆一先生
* TAの皆様方
* chatGPT
* 野崎真尭
* 坪内優輝
* 羽根石将
