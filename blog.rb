# タイトル　コンテンツ配列の宣言
#blog_titles = []
#blog_contents = []
blogs = []

guide =['以下より行う操作を選んでください',
'1:ブログを作成する',
'2:作成されたブログを見る',
'3:ブログアプリを終了する。',
]

# 無限ループ
while true

#出力
#以下より行う操作を選んでください'
#1:ブログを作成する'
#2:作成されたブログを見る'
#3:ブログアプリを終了する。'

#    puts '以下より行う操作を選んでください'
#    puts '1:ブログを作成する'
#    puts '2:作成されたブログを見る'
#    puts '3:ブログアプリを終了する。'
    guide.each do|word|
        puts word
    end
#整数入力
    number = gets.to_i

    # ブログの作成
    if number == 1
        blog = {}
        puts '1:ブログを作成する'
        puts 'ブログのタイトルを入力してください'

        # タイトル入力 
#        blog_titles = gets
#        blog_titles << blog_titles
         blog[:title] = gets

        # 内容の格納
#        blog_contents = gets
#        blog_contents << blog_contents
         blog[:contents] = gets

        blogs << blog
        puts "入力されたタイトルと本文は以下です。"
#        puts "タイトル：#{blog_titles}"
#        puts "本文#{blog_contents}"
        puts "タイトル：#{blog[:title]}"
        puts "本文#{blog[:contents]}"
    # 内容の閲覧
    elsif number == 2
        puts '2:作成されたブログを見る'
#        puts "タイトル:#{blog_titles}"
#        puts "本文:#{blog_contents}"
        blogs.each do|blog|
            puts "タイトル：#{blog[:title]}"
            puts "本文#{blog[:contents]}"
        end
    # アプリ終了
    elsif number == 3
        puts '3:ブログアプリを終了する'
        break
    # 再入力
    else
        puts '1~3の数値を入力してください。'
    end
end



