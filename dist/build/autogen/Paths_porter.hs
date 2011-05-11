module Paths_porter (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,1], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/mwotton/.cabal/bin"
libdir     = "/Users/mwotton/.cabal/lib/porter-0.1/ghc-7.0.3"
datadir    = "/Users/mwotton/.cabal/share/porter-0.1"
libexecdir = "/Users/mwotton/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "porter_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "porter_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "porter_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "porter_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
