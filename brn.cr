#!/usr/bin/env crystal

bd = Dir.current
Dir.each_child(bd) do |athr|
  Dir.each_child(athr) do |bk|
    old_name = bd + "/" + athr + "/" + bk
    new_name = bd + "/" + athr + " - " + bk
    File.rename(old_name, new_name)
  end
end
