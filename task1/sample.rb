class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    intro=['0:グー','1:チョキ','2:パー']

    puts '数字を入力してください'
    intro.each do|line|
      puts line
    end

    inputnum = gets
    result = Integer(inputnum) rescue false
    if result
      inputnum = inputnum.to_i
        if inputnum >= 0 && inputnum < 3
          return inputnum
        end
    end
    inputnum = 3
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する  
    randnum=rand(3)
    return randnum
  end
end

class Janken
  def pon(player, enemy)
    intro=['0:グー','1:チョキ','2:パー']
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
    
    en = enemy.hand
    pl = player.hand
    if pl > -1 && pl < 3 
      puts "your hand:#{intro[pl]}"
    else
      puts '0〜2の数字を入力してください。'
      puts "----------------------------"
      return Janken.new.pon(player, enemy) 
    end

    result = ((pl - en) + 3) % 3
    if result == 2
      puts "enemy:#{intro[en]}"
      puts "win"
      puts "----------------------------"

    elsif result == 1
      puts "enemy:#{intro[en]}"
      puts "lose"
      puts "----------------------------"
    else
      puts "enemy:#{intro[en]}"
      puts "draw"
      puts "----------------------------"
      # 下記の記述で、ジャンケンメソッドが起動される
      Janken.new.pon(player, enemy) 
    end
  end
end

player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player, enemy) 