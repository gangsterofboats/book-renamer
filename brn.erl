#!/usr/bin/escript
-export([main/1]).

main(_) ->
    {_, Bd} = file:get_cwd(),
    {_, Dirs} = file:list_dir(Bd),
    lists:foreach(fun(Dir) ->
                          {_, Files} = file:list_dir(Dir),
                          lists:foreach(fun(File) ->
                                                Fop = io_lib:format("~s/~s/~s", [Bd, Dir, File]),
                                                Fnp = io_lib:format("~s/~s - ~s", [Bd, Dir, File]),
                                                file:rename(Fop, Fnp)
                                        end,Files)
                  end,Dirs).
