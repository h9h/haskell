{-

    Common Parsing Tasks

-}
module Main (main) where

import Text.Megaparsec (Parsec, errorBundlePretty, runParser, MonadParsec (eof), sepBy, (<|>))
import Text.Megaparsec.Char (char, newline)
import Text.Megaparsec.Char.Lexer (decimal)

type Parser = Parsec Void String

main :: IO ()
main = do
    print "parsing - to be done"

parsecParse :: Parser a -> String -> IO a
parsecParse p input =
  case runParser p "" input of
    Left err -> putStrLn (errorBundlePretty err) >> fail "Could not parse data"
    Right r -> return r
