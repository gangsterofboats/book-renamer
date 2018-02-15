import Control.Monad
import System.Directory

main = do
  bd <- getCurrentDirectory
  xs <- getDirectoryContents bd
  let dirs = filter (`notElem` [".", ".."]) xs
  forM_ dirs $ \dir -> do
    fs <- getDirectoryContents dir
    let files = filter (`notElem` [".", ".."]) fs
    forM_ files $ \file -> do
      let fop = bd ++ "/" ++ dir ++ "/" ++ file
      let fnp = bd ++ "/" ++ dir ++ " - " ++ file
      renameFile fop fnp
