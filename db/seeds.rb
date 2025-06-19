20.times do |i|
  Book.create!(title: "ダミータイトル #{i + 1}", author: "ダミー著者 #{i + 1}")
end
