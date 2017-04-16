#### play-with-cowboy

#### 使ってるもの
- [rebar3](https://github.com/erlang/rebar3)
- [cowboy v1.1.2](https://github.com/ninenines/cowboy)
  - cowboy(v2)だとうまく動かず、v1のGetting Startedを参考に進めました。
- [erlang.mk](https://erlang.mk/erlang.mk)
- [sync](https://github.com/rustyio/sync)

#### やったこと
これをベースに進めました。
https://ninenines.eu/docs/en/cowboy/1.0/guide/getting_started/

```
# 今回はErlangのバージョン管理に [asdf](https://github.com/asdf-vm/asdf) を使用

brew install homebrew/dupes/make

wget https://erlang.mk/erlang.mk
make -f erlang.mk bootstrap bootstrap-rel

# intellijのerlangプラグインをインストール
# Project SDKのパスを `~/.asdf/installs/erlang/19.3` に設定。
```

#### 起動

```
make run
```

#### Routingの追加

```
make new t=cowboy_http n=hello_handler

# を実行しつつ、`src/play_with_cowboy_app.erl` の以下を更新する。
Dispatch = cowboy_router:compile([
    {'_', [{"/", hello_handler, []}]}
]),
```