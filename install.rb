#!/usr/bin/env ruby

# from https://github.com/rmm5t/dotfiles/blob/master/install.rb
# -> from http://errtheblog.com/posts/89-huba-huba

home = File.expand_path('~')

Dir['*'].each do |file|
  next if file =~ /install/ || file =~ /README/
  target = File.join(home, ".#{file}")
  `ln -ns #{File.expand_path file} #{target}`
end

`git submodule sync`
`git submodule update --init --recursive`
