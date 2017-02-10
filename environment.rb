Dir.glob("./initializers/*.rb").sort_by{|a,b| a<=>b}.each do |r|
  load r
end
