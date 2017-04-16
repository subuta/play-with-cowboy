#### play-with-cowboy

#### 使ってるもの
- [rebar3](https://github.com/erlang/rebar3)
- [cowboy v1.1.2](https://github.com/ninenines/cowboy)
  - cowboy(v2)だとうまく動かず、v1のGetting Startedを参考に進めました。
- [erlang.mk](https://erlang.mk/erlang.mk)
- [sync](https://github.com/rustyio/sync)

#### やったこと
これをベースに進めました。
- https://gist.github.com/flbuddymooreiv/ce1d7a47b12c27bf1616
- https://ninenines.eu/docs/en/cowboy/1.0/guide/getting_started/
- 今回はErlangのバージョン管理に [asdf](https://github.com/asdf-vm/asdf) を使用
- intellijのerlangプラグインをインストール
  - Project SDKのパスを `~/.asdf/installs/erlang/19.3` に設定。

#### 起動

```
rebar3 run

# to stop
put `q().` to erl shell and press `Enter`
```

#### Routingの追加

```
# を実行しつつ、`src/play_with_cowboy_app.erl` の以下を更新する。
Dispatch = cowboy_router:compile([
    {'_', [{"/", hello_handler, []}]}
]),
```