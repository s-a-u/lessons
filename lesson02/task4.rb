

letters = Hash.new
 ("a".."z").each_with_index do|item, index|
   index+=1
    letters[item] = index   
  end
 puts "hash  #{letters}"   

 puts "letters  #{letters.select{|k,v| 'aeiou'.include?(k)}}"
