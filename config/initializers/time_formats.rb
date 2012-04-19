[Time, Date].map do |klass|
  klass::DATE_FORMATS[:date_time_ordinal_short] = lambda { |date| date.strftime("#{date.day.ordinalize} %b %Y") }
  klass::DATE_FORMATS[:date_time_ordinal_long] = lambda { |date| date.strftime("%a, #{date.day.ordinalize} %b %Y at %H:%M") }
end

