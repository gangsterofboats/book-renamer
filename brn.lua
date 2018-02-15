local lfs = require("lfs")

bd = lfs.currentdir()
for dir in lfs.dir(bd) do
   if dir ~= "." and dir ~= ".." then
      for file in lfs.dir(dir) do
         if file ~= "." and file ~= ".." then
            fop = string.format("%s/%s/%s", bd, dir, file)
            fnp = string.format("%s/%s - %s", bd, dir, file)
            os.rename(fop, fnp)
         end
      end
   end
end
