{application, 'play_with_cowboy', [
	{description, ""},
	{vsn, "rolling"},
	{modules, ['hello_handler','play_with_cowboy_app','play_with_cowboy_sup']},
	{registered, [play_with_cowboy_sup]},
	{applications, [kernel,stdlib,cowboy]},
	{mod, {play_with_cowboy_app, []}},
	{env, []}
]}.