require './question'
def game
  # 何問目か表示
  count_q = 1
  # 得点加算
  count_point = 0

  puts <<~TEXT
  Rubyに関するクイズです。
  途中でやめたい場合は、quitと入力してください。
  TEXT

  catch :done do
    $questions_random.each do |question|
      puts <<~TEXT
        #{count_q}問目
        #{question.quiz}
        *「hint」と入力すると、ヒントが出ます*
      TEXT

      loop do
        guess = gets.chomp

        case guess.downcase
          when question.answer
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
          when 'quit'
            puts "ゲームを終了します"
            throw :done
          else
            puts <<~TEXT
              不正解です...
              答えは、#{question.answer}でした
              ------------------------------
            TEXT
            count_q += 1
            break
        end
      end
    end
  end

  puts <<~TEXT
  100点満点中「#{count_point}」点でした！
  もう一度遊びますか？
  続ける場合はy、やめる場合は他の文字を入力するか、エンターキーを押してください
  TEXT
    guess = gets.chomp
    if guess == "y"
      puts "------------------------------"
      game
    else 
      puts "お疲れ様でした！"
    end

end
