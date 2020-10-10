if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

puts 'Волшебный шар приветствует вас!'
puts 'Задайте свой вопрос и шар обязательно вам ответит.'
puts 'Однако, следовать ответу или нет - ваше решение!'
puts

user_input = STDIN.gets.chomp
puts

greetings = [
  'Привет, дорогой друг. Отвечаю на твой вопрос...',
  'Кто вопрошает, тот получит ответ:',
  'Здравствуй, смертный. Сегодня для тебя такой ответ:'
]

answers = [
  'Да!',
  'Наиболее вероятно.',
  'Лучше спроси позже...',
  'Не расчитывай на это.',
  'Безусловно!',
  'Перспектива хорошая!',
  'Ни в коем случае!',
  'Скорее да, чем нет :)',
  'Знаки говорят - да!'
]

puts greetings.sample
puts

sleep 2

puts answers.sample
