% cpg_list_pg constants for changing process group functionality

% only used if the scope application env is an empty list
-define(DEFAULT_SCOPE, cloudi_process_group).

% use dict if you don't want to be limited to string (list of integer) keys
% (guards would need to be changed to allow non-strings)
-define(GROUP_STORAGE, trie). % dict or any dict-interface module

% group name pattern matching, i.e.,
% should the strings supplied to "get_" functions be matched as patterns
% with the "*" wildcard character when finding the group name?
% (trie must be the GROUP_STORAGE when this is defined)
-define(GROUP_NAME_PATTERN_MATCHING, undefined).

% group names will only be joined/left with local pids
% so that global locking is unnecessary
-define(GROUP_NAME_WITH_LOCAL_PIDS_ONLY, undefined).

