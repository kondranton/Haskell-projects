module LogEntry where

import Data.Time.Clock
import Data.Time.Format


timeToString :: UTCTime -> String
timeToString = formatTime defaultTimeLocale "%a %d %T"

data LogLevel = Error | Warning | Info deriving Show

data LogEntry = LogEntry{ timestamp::UTCTime, logLevel::LogLevel, message::String }

logLevelToString :: LogLevel -> String
logLevelToString = show

logEntryToString :: LogEntry -> String
logEntryToString x = timeToString (timestamp x) ++ ":" ++ show (logLevel x) ++ ":" ++ show (message x)