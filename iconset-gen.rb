if ARGV.size != 2
  puts 'Usage: iconset-gen <path to original icon> <name>'
  exit(0)
end

original_icon_path = ARGV[0]
name = ARGV[1]

system "mkdir #{name}.iconset"

system "convert #{original_icon_path} -resize 16x16 #{name}.iconset/icon_16x16.png"
system "convert #{original_icon_path} -resize 32x32 #{name}.iconset/icon_16x16@2x.png"
system "convert #{original_icon_path} -resize 32x32 #{name}.iconset/icon_32x32.png"
system "convert #{original_icon_path} -resize 64x64 #{name}.iconset/icon_32x32@2x.png"
system "convert #{original_icon_path} -resize 128x128 #{name}.iconset/icon_128x128.png"
system "convert #{original_icon_path} -resize 256x256 #{name}.iconset/icon_128x128@2x.png"
system "convert #{original_icon_path} -resize 256x256 #{name}.iconset/icon_256x256.png"
system "convert #{original_icon_path} -resize 512x512 #{name}.iconset/icon_256x256@2x.png"
system "convert #{original_icon_path} -resize 512x512 #{name}.iconset/icon_512x512.png"
system "convert #{original_icon_path} -resize 1024x1024 #{name}.iconset/icon_512x512@2x.png"

system "iconutil -c icns #{name}.iconset"
