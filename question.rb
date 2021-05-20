class Question
  attr_reader :quiz, :answer, :hint

  def initialize(quiz, answer, hint)
    @quiz = quiz
    @answer = answer
    @hint = hint
  end
end

quiz1 = Question.new('ハッシュのキーを確認するメソッドは？', 'has_key?', 'h○○_○○y?')
quiz2 = Question.new('多次元の配列やハッシュを一次元配列にするためのメソッドは？', 'flatten', 'f○○○○○n')
quiz3 = Question.new('空の文字列や空の配列の場合、trueを返す真偽判定メソッドは？', 'empty?', 'e○○○y?')
quiz4 = Question.new("文字列や配列の要素に対して、指定した文字列が存在するか\n確認するための真偽判定メソッドは？", 'include?', 'i○○○○○e?')
quiz5 = Question.new('特定の文字の出現回数や、配列の要素の数を数えるメソッドは？', 'count', 'c○○○t')
quiz6 = Question.new('指定した数値の中からランダムな値を表示してくれるメソッドは？', 'rand', 'r○○d')
quiz7 = Question.new('対象の数値が偶数かどうかを判断するメソッドは？', 'even?', 'e○○n?')
quiz8 = Question.new('配列に格納されている要素から、nilを取り除くメソッドは？', 'compact', 'c○○○○○t')
quiz9 = Question.new('配列から重複した要素を取り除いた、新しい配列を返すメソッドは？', 'uniq', 'u○○q')
quiz10 = Question.new('複数のハッシュを結合させるメソッドは？', 'merge', 'm○○○e')
quiz11 = Question.new('要素をランダムに取得するメソッドは？', 'sample', 's○○○○e')
quiz12 = Question.new('配列の要素を結合して一つの文字列にするメソッドは？', 'join', 'j○○n')
quiz13 = Question.new('配列から最初の要素を取得するメソッドは？', 'first', 'f○○○t')
quiz14 = Question.new('ターミナルに値の入力機能を起動するメソッドは？', 'gets', 'g○○s')
quiz15 = Question.new('文字列（配列）の文字数（要素数）を数えるメソッドは？', 'length', 'l○○○○h')

questions = [quiz1, quiz2, quiz3, quiz4, quiz5, quiz6, quiz7, quiz8, quiz9, quiz10, quiz11, quiz12, quiz13, quiz14,
             quiz15]

$questions_random = questions.sample(10)
