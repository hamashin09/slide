---
theme : "white"
transition: "slide"
highlightTheme: "darkula"
logoImg: 

---

<!-- .slide: data-background="https://raw.githubusercontent.com/hamashin09/slide/master/001/img/back001.png" -->
## 回帰分析
<br>
<br>
<br>
<br>
<br>
<br>
#### <font color="white">L1815 浦上 真治

---

### 回帰分析とは
<font size="6">
* 目的変数と説明変数の関係を式(回帰式)に表し分析する方法
* 説明変数が1つの場合「単回帰分析」、複数の場合<br>「重回帰分析」と呼ばれる
* 回帰式が直線の場合「線形回帰分析」、直線でない場合<br>「非線形回帰分析」と呼ばれる

<div style="text-align:center">
<img src="https://raw.githubusercontent.com/hamashin09/slide/master/001/img/regression.png" width="700" height="350" title="regeression" style="background:none; border:none; box-shadow:none;">
</div> 

note:  
回帰式に表すことで未知のデータ(将来のデータ)について予測することができる

---

#### 回帰分析のロードマップ
<font size="6">
<div style="text-align:center">
<img src="https://raw.githubusercontent.com/hamashin09/slide/master/001/img/devmodel.png" width="700" height="400" title="loadmap" style="background:none; border:none; box-shadow:none;">
</div>

note: 北海道大学の久保教授のスライドより拝借  
http://hosho.ees.hokudai.ac.jp/~kubo/stat/2010/Qdai/c/kuboQ2010c.pdf

---

#### 線形回帰分析
<font size="5">
- 例題
    - 最高気温と清涼飲料水の売上の関係を分析し、気温が1℃上昇した時の売り上げを予測する
<div style="text-align:center">
<img src="https://raw.githubusercontent.com/hamashin09/slide/master/001/img/Scatter.png" width="500" height="400" title="scatter" style="background:none; border:none; box-shadow:none;">
</div>

note: 散布図を取ってみると気温が上がるほど売り上げが上がると言う関係がありそうです。
両者の相関係数は0.97で強い比例関係がありました。

--

<font size="5">
まず以下の様な回帰直線を求めて両者の関係をモデルにする
<div style="text-align:center">
<img src="https://raw.githubusercontent.com/hamashin09/slide/master/001/img/Scatter_line.png" width="500" height="400" title="scatter_line" style="background:none; border:none; box-shadow:none;">
</div>

- 回帰直線は以下の条件を満たす必要がある
    - 2つのデータの平均値が交差する部分を通る
    - 各点とのズレが最小となる位置を通る

--

<font size="６">
回帰直線を求めるとは回帰式の切片と回帰係数を求めると言うこと
<font size="6">
- (単)回帰式の一般式
>$y = a + bx$  

    - $a$: 切片
    - $b$: 回帰係数

この$a$と$b$を求める為に<font color="red">最小2乗法</font>を用いる


note: x:説明変数　y:目的変数
回帰式は回帰直線を数式化したもの
回帰直線を求めるとは回帰式の切片と回帰係数を求めると言うこと

--

#### 最小2乗法

<font size="5">
- 回帰分析に近似するモデルと実データの差の2乗和が最小となるように推測する手法

<div style="text-align:left">
>目的変数$y$の回帰式による予測値と実測値の差を残差と呼び、  
これは予測の誤差と捉えられる。  
各データにおける残差の平方和$^*$が小さければ  
回帰式は$y$をよく説明できていることになるので、  
これが最小になるところを回帰式として採用する
<font size="3">
＊：残差は負の数の場合もあるのでマイナスを打ち消す為に２乗する

note: 

--

#### 予測
<font size="6">
- 計算の結果、回帰式は$y=-760.88+33.74x$となった
- つまり気温が1℃上昇すると33.74個売り上げが増えることになる
- この式を使えば未知の気温でも予測が可能になる

note: ただし元データの範囲は24~35℃であるので、この範囲外の気温だと予測精度が低下する可能性がある(外挿)

--

#### 分析の評価
<font size="6">
- 分析の精度の評価基準として決定係数($R^2$)が用いられる
- 決定係数は0≦$R^2$≦1の値を取り、1に近いほど精度が高いことを意味する
- 今回は「$R^2=0.9414$」となったのでかなり高い精度となった

note: 決定係数は目的変数yの予測値の偏差平方和をyの実測値の偏差平方和で割ったもの

---

#### 非線形
<font size="6">

note: 

---

#### 
<font size="6">

note: 

---

#### 
<font size="6">

note: 

---

#### 
<font size="6">

note: 

---

#### 
<font size="6">

note: 

---

#### 
<font size="6">

note: 

---

#### 
<font size="6">

note: 

---

#### 
<font size="6">

note: 

---

#### 
<font size="6">

note: 

---

#### 
<font size="6">

note: 

---

#### 
<font size="6">

note: 

---

#### 
<font size="6">

note: 

---

#### 
<font size="6">

note: 

---

#### 
<font size="6">

note: 

---