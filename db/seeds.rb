# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Discipline.destroy_all

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
