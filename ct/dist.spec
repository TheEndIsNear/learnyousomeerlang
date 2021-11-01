{node, a, 'a@traveler.local'}.
{node, b, 'b@traveler.local'}.

{init, [a,b], [{node_start, [{monitor_master, true}]}]}.

{alias, demo, "./demo/"}.
{alias, meeting, "./meeting/"}.

{logdir, "./logs/"}.

{suites, [b], meeting, all}.
{suites, [a], demo, all}.
{skip_cases, [a], demo, basic_SUITE, test2, "This test fails on purpose"}.
