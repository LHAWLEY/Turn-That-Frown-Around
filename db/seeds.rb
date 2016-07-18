User.create(email: 'hawleyleeanne@gmail.com', password: "123")

User.create(email: 'leeanne.hawley@yahoo.com', password: "123")

Video.create(user_id: 1, link: 'fT1Q4MfvG9k', title: "People Scaring Their Cats With Cucumbers", description: "One of our most popular stories of the year dealt with a fairly recent viral trend: scaring pet cats with cucumbers. Although some cats don’t seem to react to a clandestinely placed vegetable, others leap into the air, as if they’re terrified of an intruder.
  Cat behavior experts say the cats are responding with a natural defensive impulse, as if encountering a potential predator. The experts also advised against trying it at home for fear of stressing out pets without good reason. That advice inspired a vigorous debate among our readers and online.")

Video.create(user_id: 2, link: 'U_4XWcDSR8w', title: "'Cute Mini Pigs Compilation' || CFS", description: "Cute Mini Pigs Compilation.  It's time for this cute little piggies to take over the internet. Just look how excited and playfull they are! So adorable!
")
Video.create(user_id: 3, link: 'de6uTMEiZf0', title: "1 Day Old Sea Otter Trying to Sleep on Mom", description: "This baby sea otter was born in the 'Great Tide Pool' at the Monterey Bay Aquarium on 12/20/15.")

Video.create(user_id: 4, link: 'rT_I_GV_oEM', title: "Cute Puppies Compilation || NEW", description: "If you are a puppy owner, you know how cute puppies are. These cute puppies doing funny things will make you want to cuddle one. Hope you like this cute dog videos.")

Video.create(user_id: 5, link: 'IyXn4chXcqY', title: "See this baby polar bear grow up in under 2 minutes", description: "An adorable time-lapsed video of a baby polar bear shows the stages of her growing up.
")

Video.create(user_id: 6, link: 'GzG7TEvUGn8', title: "New Born White Lion Cub and Dogs Best Friends", description: "Rare, white new born lion cub playing with dogs in South Africa. Navaro, the white lion is 3 weeks old. ")

Video.create(user_id: 7, link: 'dBgMVtxrIN0', title: "Funny Cute Baby Animal Videos Compilation 2014 [NEW]", description: "A baby animal is cute by default. These cute baby animals will make you go aww. Check out this funny animal videos compilation of cute baby animals.")

Video.create(user_id: 8, link: 'kFv4qYZQz1g', title: "Baby Animals - A Cute Animal Videos Compilation || NEW HD", description: "Check out these baby animals in this cute animal videos compilation. Cute baby animals or funny baby animals will lift your mood. I hope you enjoy these funny animal videos for children.")

Video.create(user_id: 9, link: 'R0Te9mA7baA', title: "Cute Baby Animals Standing for the First Time and Taking First Steps Compilation [HD VIDEO]", description: "Most of animals have very cute babies babies. Most adorable moment is when baby animals are for the first time standing and walking, sometimes only trying to walk. In this video you can see kitten's first steps, cute puppies first time walkins, also how baby deer walking for the first time, how newborn horse")

Video.create(user_id: 10, link: 'pLHKSwnQoy4', title: "Funny Baby Animals are so Cute! - Cutest Compilation 2016", description: "Funny Baby Animals are so Cute! - Cutest Compilation 2016

  Funny Animal Videos: Funny Cute Baby Animals doing what they do best. Just being cute and funny animals. Puppies, Dogs, Kittens, Elephants, Goats, Pigs, Monkeys, Foxes, Hedgehogs. Adorable! Cut")

  Video.all.each do |video|
    number_of_comments = rand(1..5)

    number_of_comments.times do
      video.comments << Comment.new(body: Faker::Hipster.sentence, commentor: User.all.sample)
    end
  end
