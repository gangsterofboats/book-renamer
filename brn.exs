#!/usr/bin/elixir
bd = System.cwd()
{_, dirs} = File.ls(bd)
for dir <- dirs do
    {_, files} = File.ls(dir)
    for file <- files do
      fop = "#{bd}/#{dir}/#{file}"
      fnp = "#{bd}/#{dir} - #{file}"
      File.rename(fop, fnp)
    end
end
