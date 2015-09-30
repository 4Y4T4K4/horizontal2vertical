arr = []
count = 0
puts "横書きの文章を縦書きにして出力するよ"
puts "最後の行には「。」を入れると縦書きの文章が出力されるよ"
line = 1
while true do
  print line.to_s + "行目："
  str = STDIN.gets
  tmp = str.delete("\n")
  arr.push(tmp)
  count = tmp.length if tmp.length > count
  break if str.include?("。")
  line += 1
end
puts "\n↓たてがきにしたやーつ"
for i in 0..count-1
  out = ""
  j = arr.length-1
  while j >= 0
    tmp = arr[j][i] rescue nil
    if tmp.nil? == false then
      out += arr[j][i]
    else
      out += "　"
    end
    j -= 1
  end
  puts out
end
