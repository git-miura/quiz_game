require './question'


def game
  # 何問目か表示
  count_q = 1
  # 得点加算
  count_point = 0

  puts <<~TEXT
  Rubyに関するクイズです。
  途中でやめたい場合は、exitと入力してください。
  TEXT

  $questions_random.each do |question|
    puts <<~TEXT
      ■#{count_q}問目
      #{question.quiz}
      *「hint」と入力すると、ヒントが出ます*
    TEXT

    loop do
      guess = gets.chomp

      case guess.downcase
        when question.answers[0], question.answers[1]
          puts <<~TEXT
            正解です！
            ------------------------------
          TEXT
          count_point += 10
          count_q += 1
          break
        when 'hint'
          puts <<~TEXT
            #{question.hint}
            答えを入力してください！
          TEXT
        when 'exit'
          puts "ゲームを終了します"
          exit
        else
          puts <<~TEXT
            不正解です...
            答えは、#{question.answers[0]}でした
            ------------------------------
          TEXT
          count_q += 1
          break
      end
    end
  end

  puts <<~TEXT
  100点満点中「#{count_point}」点でした！
  もう一度遊びますか？
  続ける場合はy、やめる場合は他の文字を入力するか、エンターキーを押してください
  TEXT

  guess = gets.chomp
  if guess.downcase == "y"
    puts "------------------------------"
    game
  else 
    puts "お疲れ様でした！"
  end

end
