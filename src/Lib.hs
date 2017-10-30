{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}

module Lib
    ( someFunc
    ) where

import Database.MongoDB (Action, Document, Document, Value, access,
                         close, connect, delete, exclude, find,
                         host, insertMany, master, project, rest,
                         select, sort, (=:), openReplicaSet)
import Control.Monad.Trans (liftIO)

someFunc :: IO ()
someFunc = do 
	replicaSet <- openReplicaSet ("DX-data-production-1-shard-0", [])
    pipe <- connect (host "127.0.0.1")
   	

-- main = do
--     pipe <- connect (host "127.0.0.1")
--     e <- access pipe master "baseball" run
--     close pipe
--     print e
