def do_self_importantly some_proc
  puts "Everybody just HOLD ON! I'm doing something..."
  some_proc.call # Makes it quite clear when something needs to happen.
  puts "OK everyone, I'm done. As you were."
end

say_hello = Proc.new do
  puts 'hello'
end

say_goodbye = Proc.new do
  puts 'goodbye'
end

do_self_importantly say_hello
do_self_importantly say_goodbye
