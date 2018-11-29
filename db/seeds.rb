# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "Tipic #{topic}"
  )
end

10.times do |blog|
  Blog.create!(
    title: "Unassisted Baby #{blog}",
    body: "The hardest thing for a Short Seller that’s on the right side of
    a big move is to know when to cover-some – that’s why we built
    my immediate-term TRADE overbought/oversold signal. Yesterday’s biggest
    oversold signals came in Oil, Italian Stocks, and SPY; as is always the case
      in Bearish @Hedgeye TREND markets, we’ll learn a lot from this morning’s bounces.",
      topic_id: Topic.last.id
  )
end

5.times do |skill|
  Skill.create!(
    title: "Java #{skill}",
    percent: 25
  )
end

8.times do |port|
  Portfolio.create!(
    title: "Fake Title",
    subtitle: "Bond King" ,
    body: "Sell Tesla Short." ,
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

1.times do |port|
  Portfolio.create!(
    title: "Long LFVN",
    subtitle: "Holy Moly Mike Santolli" ,
    body: "100,000 bitcoin." ,
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end
