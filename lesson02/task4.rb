

letters = Hash.new
 ("a".."z").each_with_index {|item, index|
   index+=1
    letters[item] = index   
  }
 puts "hash  #{letters}"   

 puts "letters  #{letters.select{|k,v| 'aeiou'.include?(k)}}"
