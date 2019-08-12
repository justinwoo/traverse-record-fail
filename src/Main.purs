module Main where

import Prelude

import Data.Traversable (traverse)

fail :: Unit
fail =
  let
    myFn :: { apple :: Int } -> { banana :: String }
    myFn r = { banana: show r.apple }

    _ = traverse myFn { apple: 1 }
  in unit

--   Could not match type
--
--     ( apple :: Int
--     )
--
--   with type
--
--     { apple :: Int
--     }
--
--
-- while trying to match type { apple :: Int
--                            }
--   with type t0
--               { apple :: Int
--               }
-- while checking that expression { apple: 1
--                                }
--   has type t0
--              { apple :: Int
--              }
-- in value declaration fail
--
-- where t0 is an unknown type
--  [TypesDoNotUnify]
