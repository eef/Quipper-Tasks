Factory.define :task do |t|
  t.title Faker::Lorem.sentence(3)
  t.description Faker::Lorem.paragraph
  t.deadline (Time.now + 2.days)
  t.complete false
end

