#!/usr/bin/env nim
import os

var bd = getCurrentDir()
for file in walkDirRec bd:
  var (_, prnt) = splitPath(parentDir(file))
  var nname = bd & "/" & prnt & " - " & extractFilename(file)
  moveFile(file, nname)
