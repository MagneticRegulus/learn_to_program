def struck_hour(&bell_tolls)
  hour = Time.new.hour
  puts hour
  hour = hour + 1
  if hour > 12
    hour = hour - 13 # originally "- 12" but returned 8 for 7:50 p.m.
  end
  hour.times do
    bell_tolls.call
  end
end

struck_hour do
  puts 'DONG!'
end
