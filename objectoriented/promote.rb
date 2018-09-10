require 'launchy'

# 24分間　集中用の音楽を聞く
Launchy.open("http://shokai.org/blog/archives/7262")
# 60 × 24 秒ここで処理を停止する
sleep(60 * 24)
# 24分後休憩用のサイトを聞く
Launchy.open("https://diveintocode.jp/")