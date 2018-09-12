require 'pg'


# dbへ接続
connection = PG::connect(dbname: "goya")
# 文字コード設定
connection.internal_encoding="UTF-8"

begin


  # レコード取得
  result = connection.exec("select date, weight, give_for from crops")

  # レコード表示
  result.each do |record|
    puts "size of goya : #{record["weight"]} sale:#{record["give_for"]}"
end
ensure

  # 接続終了
  connection.finish
end
