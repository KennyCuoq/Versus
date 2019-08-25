# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Clear Database
Discipline.destroy_all
HomeBanner.destroy_all
ClassSession.destroy_all
PackageGroup.destroy_all
HomeCtaCard.destroy_all
Trainer.destroy_all

# ---------- Disciplines ----------

# Set up attributes for disciplines
muay_thai = {
  name: 'Muay Thai',
  remote_photo_url: 'https://res.cloudinary.com/dxzgio39l/image/upload/v1566137157/Classes-MT.jpg',
  description: "Also known as the 'Science of eight limbs', Muaythai is the ancient martial art and national sport of Thailand. Muaythai combines punches, kicks, knee and elbow strikes with clinching and sweeps. It’s considered to be one of the most effective of the striking arts. Our Muaythai classes are authentic from experienced trainers/fighters, in addition to a great workout, they will teach you proper techniques regardless of whether you decide to fight or not."
}

mma = {
  name: 'Mixed Martial Arts',
  remote_photo_url: 'https://res.cloudinary.com/dxzgio39l/image/upload/v1566721032/MMA.jpg',
  description: "MMA is a full contact combat sport that allows the use of both striking and grappling techniques, both standing and on the ground. It could include a range of martial arts including boxing, wrestling, Brazilian jiu-jitsu, Muaythai, kickboxing, taekwondo, karate, judo and other styles.
  Aside from going into competitions, MMA is a great overall workout regime suitable for both men and women. Children and teens can benefit from the disciplinary nature of the training – increase focus, concentration as well as character-building."
}

bjj = {
  name: 'Braziilian Jiu-Jitsu',
  remote_photo_url: 'https://res.cloudinary.com/dxzgio39l/image/upload/v1566702963/Banner-BJJ-3.jpg',
  description: "Known as the ‘gentle art’, Brazilian jiujitsu (BJJ) is a martial art, combat sport, and a self defense system that focuses on grappling and especially ground fighting. The art was derived from the japanese martial art of kodokan judo (which itself is derived from japanese jujutsu) in the early 20th century. It teaches that a smaller, weaker person can successfully defend against a bigger, stronger assailant by using leverage and proper technique – most notably by applying joint-locks and chokeholds to defeat the other person. BJJ training can be used for sport grappling tournaments (gi and no-gi) and is essential to mixed martial arts (MMA) training or self defense. Sparring (commonly referred to as “rolling”) and live drilling play a major role in training, and a premium is placed on performance, especially in competition, in relation to progress and ascension through its ranking system."
}

# Actually create disciplines from above data
disciplines = [muay_thai, mma, bjj]
disciplines.each do |discipline|
  Discipline.create!(discipline)
end

# ---------- Class Sessions / Schedule ----------

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

# ---------- Packages and Package Groups ----------

#Create Package Groups
private_training = PackageGroup.create!(name: "Private Training", order: 1)
group_classes = PackageGroup.create!(name: "Group Classes (valid 3 months)", order: 2)
monthly_passes = PackageGroup.create!(name: "Monthly Passes", order: 3)

#Create Packages

#Private Training
Package.create!(title: "Muaythai (1h)", price: 500, description: "1o1 ring session with one of our trainers", order: 1, package_group: private_training)
Package.create!(title: "Fitness (30min)", price: 250, description: "HIIT and Weight session tailored to your needs", order: 2, package_group: private_training)

#Group Classes
Package.create!(title: "Trial", price: 0, description: "Choose any available class ($150 without HKID)", order: 1, package_group: group_classes)
Package.create!(title: "Single", price: 220, description: "Choose any available class", order: 2, package_group: group_classes)
Package.create!(title: "5 Classes", price: 1000, description: "Choose any available class", order: 3, package_group: group_classes)
Package.create!(title: "10 Classes", price: 1800, description: "Choose any available class", order: 4, package_group: group_classes)
Package.create!(title: "20 Classes", price: 3200, description: "Choose any available class", order: 5, package_group: group_classes)

# Monthly Passes
Package.create!(title: "Trial Month", price: 999, description: "Unlimited full access (first month only)", order: 1, package_group: monthly_passes)
Package.create!(title: "Unlimited Lite (1 month)", price: 1500, description: "Choose Muaythai & Boxing or BJJ or MMA(+ No gi) or Fitness(HIIT/Kickfit)", order: 2, package_group: monthly_passes)
Package.create!(title: "Unlimited Lite (2 months)", price: 3600, description: "Choose Muaythai & Boxing or BJJ or MMA(+ No gi) or Fitness(HIIT/Kickfit)", order: 3, package_group: monthly_passes)
Package.create!(title: "Unlimited Lite (3 months)", price: 6000, description: "Choose Muaythai & Boxing or BJJ or MMA(+ No gi) or Fitness(HIIT/Kickfit)", order: 4, package_group: monthly_passes)
Package.create!(title: "Unlimited Full (1 month)", price: 1800, description: "Full access to all classes", order: 5, package_group: monthly_passes)
Package.create!(title: "Unlimited Full (2 months)", price: 4500, description: "Full access to all classes", order: 6, package_group: monthly_passes)
Package.create!(title: "Unlimited Full (3 months)", price: 7800, description: "Full access to all classes", order: 7, package_group: monthly_passes)

# ---------- Home Banners ----------

# Create HomeBanners
# home_banner_1
HomeBanner.create!(remote_photo_url: "https://res.cloudinary.com/dxzgio39l/image/upload/v1566137156/Banner-MT-1.jpg")
# home_banner_2
HomeBanner.create!(remote_photo_url: "https://res.cloudinary.com/dxzgio39l/image/upload/v1566137171/Banner-MT-2.jpg")
# home_banner_3
HomeBanner.create!(remote_photo_url: "https://res.cloudinary.com/dxzgio39l/image/upload/v1566706270/Banner-BJJ-3.jpg")

# ---------- Home CTA Cards ----------

# Create Home CTA Cards

card_1 = {
  title: "Private Training",
  link_url: "/private-training",
  remote_photo_url:'https://res.cloudinary.com/dxzgio39l/image/upload/v1566702751/PERSONAL_TRAINING.jpg'
}
HomeCtaCard.create!(card_1)

card_2 = {
  title: "Schedule and Fees",
  link_url: '/schedule-and-fees',
  remote_photo_url: 'https://res.cloudinary.com/dxzgio39l/image/upload/v1566703287/schedule_fees.jpg'
}
HomeCtaCard.create!(card_2)

card_3 = {
  title: "Visit us",
  link_url: '/visit-us',
  remote_photo_url: "https://res.cloudinary.com/dxzgio39l/image/upload/v1566703236/visit_us.jpg"
}
HomeCtaCard.create!(card_3)

# ---------- Trainers ----------

Trainer.create!(
  name: "Quinton Arendse",
  specialty: "Mixed Martial Arts . Kickboxing . Boxing . Fitness . Strength & Conditioning",
  achievement: "Professional MMA Fighter . BJJ Black Belt (GFTeam) under Julio Cesar Pereira . Kyokushin Karate Black Belt",
  description: "South-African-born, ​Quinton has been a professional fighter and coach for over 20 years. He has lived and worked solely as a professional fighter in ​Japan to compete in ​Brazilian ​​jiujitsu, ​MMA an​d muaythai; a rare breed ​who can teac​h multiple​ disciplines well. He ​is one of the most sought-after MMA trainers in Hong Kong, especiall​y in the professional circle – he ha​s a unique way of teaching his students for them to absorb his teachings, ​he understands each individual’s needs and personalises trainin​g to maximise results.",
  remote_photo_url: "https://res.cloudinary.com/dxzgio39l/image/upload/v1566705553/Trainer_quinton.jpg"
  )

Trainer.create!(
  name: "Phil McAlpine",
  specialty: "Muay Thai . Boxing . Fitness . Strength & Conditioning",
  achievement: "Former professionnal Muay Thai Figher in Thailand . Ranked #3 ranked at Rajademnern Stadium, Bangkok",
  description: "Born in ​England, ​Phil came to ​Hong ​Kong in 2010 after spending many years in ​Thailand, living, training and fighting with some of the best ​Muay​thai fighters in the world and attaining a no. 3 ranking at Rajademnern Stadium, Bangkok. With over 20 years experience he teaches ​Muaythai and boxing, and is available for ​private ​training sessions.",
  remote_photo_url: "https://res.cloudinary.com/dxzgio39l/image/upload/v1566719389/trainer_phil.jpg"
  )

Trainer.create!(
  name: "Michael Dacuno",
  specialty: "Muaythai . Boxing. Fitness . Strengh & Conditioning . NASM qualified",
  achievement: "Professional Muay Thai Fighter . NASM qualified . Hong Kong Muaythai champion 2017 . I-1 champion, I-1 Asia champion ",
  description: "Michael grew up in Hong Kong, studying sports science and started training since he was in his late teens. He has an excellent base in Muaythai, boxing and MMA – competing in and winning professional fights. He is conscientious and an excellent trainer. He teaches Muaythai, boxing and fitness classes, and is also available for private training sessions.",
  remote_photo_url: "https://res.cloudinary.com/dxzgio39l/image/upload/v1566706653/trainer_mike.jpg"
  )

