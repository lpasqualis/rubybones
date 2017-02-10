Dir.glob("#{Config.get(:paths,:root)}/app/*.rb").each do |r|
  require r
end

Dir.glob("#{Config.get(:paths,:root)}/app/**/*.rb").each do |r|
  require r
end
