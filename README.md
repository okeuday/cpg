cpg (CloudI Process Groups)
===

Documentation, error handling, and tests will be coming soon!

#Example

    (cpg@localhost)1> application:start(cpg).
    ok
    (cpg@localhost)2> cpg_list_pg:join(process_group1, "Hello", self()).      
    ok
    (cpg@localhost)3> cpg_list_pg:join(process_group1, "World", self()).
    ok
    (cpg@localhost)4> cpg_list_pg:get_local_members(process_group1, "Hello"). 
    {ok,"Hello",[<0.43.0>]}
    (cpg@localhost)5> cpg_list_pg:get_local_members(process_group1, "World").
    {ok,"World",[<0.43.0>]}
    (cpg@localhost)6> cpg_list_pg:which_groups(process_group1).              
    ["Hello","World"]
    (cpg@localhost)7> cpg_list_pg:which_groups(process_group2).
    []
    
