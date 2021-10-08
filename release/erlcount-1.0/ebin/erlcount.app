{application, erlcount,
 [{vsn, "1.0.0"},
  {modules, [erlcount, erlcount_sup, erlcount_lib,
             erlcount_dispatch, erlcount_counter]},
  {applications, [ppool]},
  {registered, [erlcount]},
  {description, "Run regular expressions on Erlang source files"},
  {mod, {erlcount, []}},
  {applications, [stdlib, kernel]},
  {env,
   [{directory, "."},
    {regex, ["if\\s.+->", "case\\s.*\\sof"]},
    {max_files, 10}]}
]}.
