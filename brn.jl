#!/usr/bin/env julia

bd = pwd()
dirs = readdir(bd)
for dir in dirs
  files = readdir(dir)
  for file in files
    fop = abspath(dir) * "/" * file
    fnp = abspath(bd) * "/" * dir * " - " * file
    mv(fop, fnp)
  end
end
