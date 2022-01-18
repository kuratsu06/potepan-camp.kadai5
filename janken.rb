def janken
  puts "じゃんけん..."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"

  player_hand = gets.to_i
  program_hand = rand(3)

  puts "ホイ！"

  jankens = ["グー", "チョキ", "パー","戦わない"]

  puts "--------------"
  puts "あなた:#{jankens[player_hand]}を出しました"
  puts "相手:#{jankens[program_hand]}を出しました"
  puts "--------------"

  if player_hand == program_hand
    puts "あいこで..."
    return true

  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    
    player_hand = gets.to_i
    program_hand = rand(4)
    
    puts "ホイ！"
    
    hois = ["上","下","左","右"]
    
    puts "--------------"
    puts "あなた:#{hois[player_hand]}:"
    puts "相手:#{hois[program_hand]}"
    puts "--------------"
    
    if player_hand == program_hand
      puts "あなたの勝ちです！"
    
    else
      return true
      
    end

  elsif (player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1) || (player_hand == 0 && program_hand == 2)
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    
    player_hand = gets.to_i
    program_hand = rand(4)
    
    puts "ホイ！"
    
    hois = ["上","下","左","右"]
    
    puts "--------------"
    puts "あなた:#{hois[player_hand]}"
    puts "相手:#{hois[program_hand]}"
    puts "--------------"
    
    if player_hand == program_hand
      puts "あなたの負けです！"
    
    else
      return true
      
    end
  
  elsif player_hand == 3
    return false
    
  end
end

next_game = true

while next_game
  next_game = janken
end