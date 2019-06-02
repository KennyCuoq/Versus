# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Discipline.destroy_all
HomeBanner.destroy_all
ClassSession.destroy_all

muay_thai = {
  name: 'Muay Thai',
  remote_photo_url: 'http://www.muaythaischolar.com/wp-content/uploads/2016/12/Kickers.jpg',
  description: "Also known as the 'Science of eight limbs', Muaythai is the ancient martial art and national sport of Thailand. Muaythai combines punches, kicks, knee and elbow strikes with clinching and sweeps. It’s considered to be one of the most effective of the striking arts. Our Muaythai classes are authentic from experienced trainers/fighters, in addition to a great workout, they will teach you proper techniques regardless of whether you decide to fight or not."
}

mma = {
  name: 'MMA',
  remote_photo_url: 'https://www.tigermuaythai.com/wp-core/wp-content/uploads/2008/10/cody-no-love-ufc-tmt.jpg',
  description: "MMA is a full contact combat sport that allows the use of both striking and grappling techniques, both standing and on the ground. It could include a range of martial arts including boxing, wrestling, Brazilian jiu-jitsu, Muaythai, kickboxing, taekwondo, karate, judo and other styles.
  Aside from going into competitions, MMA is a great overall workout regime suitable for both men and women. Children and teens can benefit from the disciplinary nature of the training – increase focus, concentration as well as character-building."
}

bjj = {
  name: 'Brazilian jiu-jitsu',
  remote_photo_url: 'https://i.pinimg.com/originals/2d/02/cc/2d02cc5f5a72fcde54124387a8362ef7.jpg',
  description: "Known as the ‘gentle art’, Brazilian jiujitsu (BJJ) is a martial art, combat sport, and a self defense system that focuses on grappling and especially ground fighting. The art was derived from the japanese martial art of kodokan judo (which itself is derived from japanese jujutsu) in the early 20th century. It teaches that a smaller, weaker person can successfully defend against a bigger, stronger assailant by using leverage and proper technique – most notably by applying joint-locks and chokeholds to defeat the other person. BJJ training can be used for sport grappling tournaments (gi and no-gi) and is essential to mixed martial arts (MMA) training or self defense. Sparring (commonly referred to as “rolling”) and live drilling play a major role in training, and a premium is placed on performance, especially in competition, in relation to progress and ascension through its ranking system."
}

disciplines = [muay_thai, mma, bjj]
disciplines.each do |discipline|
  Discipline.create!(discipline)
end

# home_banner_1
HomeBanner.create!(remote_photo_url: "https://images4.alphacoders.com/215/215894.jpg")
# home_banner_2
HomeBanner.create!(remote_photo_url: "https://www.tigermuaythai.com/wp-core/wp-content/uploads/2008/10/cody-no-love-ufc-tmt.jpg")
# home_banner_3
HomeBanner.create!(remote_photo_url: "https://www.bloomberg.com/features/2016-brazilian-jiujitsu-academies/img/jiu-jitsu-martial-arts-pursuits-bloomberg-03.jpg")

# Create ClassSessions

#Create array with number for each day of the week
days = [1, 2, 3, 4, 5 ,6 ,7]

# Set up some start times for classes
t_starts = [
  Time.new(2100, 12, 31, 8),
  Time.new(2100, 12, 31, 9),
  Time.new(2100, 12, 31, 10),
  Time.new(2100, 12, 31, 13),
  Time.new(2100, 12, 31, 14),
  Time.new(2100, 12, 31, 15)
]

# Set up some end times for classes
t_ends = [
  Time.new(2100, 12, 31, 9, 30),
  Time.new(2100, 12, 31, 10),
  Time.new(2100, 12, 31, 11, 45),
  Time.new(2100, 12, 31, 14, 30),
  Time.new(2100, 12, 31, 15),
  Time.new(2100, 12, 31, 17, 30)
]

# Create schedule for each day
days.each do |day|
  # Create a session for each specific start date
  t_starts.each_with_index do |t_start, index|
    ClassSession.create!(day: day, start_time: t_start, end_time: t_ends[index], discipline: disciplines.sample[:name])
  end
end

#Create Package Groups
private_training = PackageGroup.create!(name: "Private Training")
group_classes = PackageGroup.create!(name: "Group Classes (valid 3 months)")
monthly_passes = PackageGroup.create!(name: "Monthly Passes")

#Create Packages

#Private Training
Package.create!(title: "Muaythai (1h)", price: 500, description: "1o1 ring session with one of our trainers", package_group: private_training)
Package.create!(title: "Fitness (30min)", price: 250, description: "HIIT and Weight session tailored to your needs", package_group: private_training)

#Group Classes
Package.create!(title: "Trial", price: 0, description: "Choose any available class ($150 without HKID)", package_group: group_classes)
Package.create!(title: "Single", price: 220, description: "Choose any available class", package_group: group_classes)
Package.create!(title: "5 Classes", price: 1000, description: "Choose any available class", package_group: group_classes)
Package.create!(title: "10 Classes", price: 1800, description: "Choose any available class", package_group: group_classes)
Package.create!(title: "20 Classes", price: 3200, description: "Choose any available class", package_group: group_classes)

# Monthly Passes
Package.create!(title: "Trial Month", price: 999, description: "Unlimited full access (first month only)", package_group: monthly_passes)
Package.create!(title: "Unlimited Lite (1 month)", price: 1500, description: "Choose Muaythai & Boxing or BJJ or MMA(+ No gi) or Fitness(HIIT/Kickfit)", package_group: monthly_passes)
Package.create!(title: "Unlimited Lite (2 months)", price: 3600, description: "Choose Muaythai & Boxing or BJJ or MMA(+ No gi) or Fitness(HIIT/Kickfit)", package_group: monthly_passes)
Package.create!(title: "Unlimited Lite (3 months)", price: 6000, description: "Choose Muaythai & Boxing or BJJ or MMA(+ No gi) or Fitness(HIIT/Kickfit)", package_group: monthly_passes)
Package.create!(title: "Unlimited Full (1 month)", price: 1800, description: "Full access to all classes", package_group: monthly_passes)
Package.create!(title: "Unlimited Full (2 months)", price: 4500, description: "Full access to all classes", package_group: monthly_passes)
Package.create!(title: "Unlimited Full (3 months)", price: 7800, description: "Full access to all classes", package_group: monthly_passes)




