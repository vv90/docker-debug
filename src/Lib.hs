module Lib
    ( someFunc
    ) where
import Control.Concurrent (threadDelay)

testThread :: IO ()
testThread = do
    threadDelay 1000000
    putStrLn "Hello from testThread"
    testThread

someFunc :: IO ()
someFunc = do
    testThread
