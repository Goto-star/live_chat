3.times do |number|
  Message.create(content: "#{number}番目のメッセージです!", user_id: User.first.id)
  puts "#{number}番目のメッセージが作成されました"
end

puts "メッセージの作成が完了しました"
