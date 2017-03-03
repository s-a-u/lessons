
months = {:"January"=>31, :"Febriary"=>28, :"March"=>31,
:"April"=>30, :"May"=>31, :"June"=>30, :"July"=>31, :"August"=>31, 
:"September"=>30, :"October"=>31, :"November"=>30,:"Desember"=>31}

puts months.select {|k,v| v ==30}