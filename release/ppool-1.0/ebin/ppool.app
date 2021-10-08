{application, ppool,
 [{vsn, "1.0.0"},
  {modules, [ppool, ppool_serv, ppool_sup, ppool_supersup, ppool_worker_sup]},
  {registered, [ppool]},
  {description, "Run and enqueue different concurrent tasks"},
  {mod, {ppool, []}},
  {applications, [stdlib, kernel]}
]}.
