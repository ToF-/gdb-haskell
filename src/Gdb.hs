module Gdb where

type Minute = Int
type Route = [Station]
type Station = Int

complete :: [Route] -> String
complete routes = case complete_gossips routes of
                    Just m -> show (1 + m)
                    Nothing -> "never"

complete_gossips :: [Route] -> Maybe Int
complete_gossips [r,s] = first_common_stop 0 [cycle r, cycle s]
complete_gossips [r] = Just 0
complete_gossips _ = Nothing

first_common_stop :: Int -> [Route] -> Maybe Int
first_common_stop 480 _ = Nothing
first_common_stop n [s:ss,t:ts] | s == t = Just n
                                | otherwise = first_common_stop (succ n) [ss,ts]
                                  

