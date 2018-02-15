#!/usr/bin/ruby
require 'pathname'

bd = Pathname.new(Dir.pwd)
bd.children.each do |drct|
  rest, prnt = drct.split
  drct.children.each do |f|
    nname = prnt.to_s + ' - ' + f.basename.to_s
    f.rename(nname)
  end
end
