# to study Gauche


## 実行

### REPL

`gosh` or `rlwrap gosh`

exit: `(exit)`

### Run

`gosh xxx.scm`

----

## ドキュメント

### Chrome

- `chrome://settings/searchEngines` を開いて、
- gosh: `http://practical-scheme.net/gauche/man/?l=jp&p=%s` を設定。

### 最新化・ビルド
[Gaucheを常に最新に保つ。](http://ayato.hateblo.jp/entry/20130521/1369149623)

Clone:

```bash
git clone https://github.com/shirok/Gauche.git
cd Gauche
```

Install:

```bash
./DIST gen
./configure
make
make check
make install
```

----

## Emacs操作

### GUI Emacs起動

`~/.zshrc`: `alias em="open -a Emacs"`

### scheme-mode

`C-c G`: ウィンドウを開いて gosh
`C-x C-e`: 式の評価

### Pane

- `C-x 2` : 上下分割。
- `C-x 3` : 左右分割。
- `C-x 1` : 分割を消す。
- `C-x o` : 別のウィンドウを選択。
	- `C-c h|j|k|l` : 移動。

### 範囲削除（コピー

`Ctrl-@` して、Ctrl-w`
