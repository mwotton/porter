{-# LANGUAGE ScopedTypeVariables #-}

import Language.Porter
import Control.Applicative

main :: IO ()
main = (unlines . map stem . lines) <$> getContents >>= putStr


