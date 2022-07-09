module Gdb where

type Minute = Int
type Route = [Station]
type Station = Int

complete :: [Route] -> Minute
complete _ = 1 
