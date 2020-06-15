# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Article.destroy_all
Favorite.destroy_all 

user1 = User.create(username:'Alex', email: 'bla@bla.net')
user2 = User.create(username:'Jake', email: 'jake@jake.net')
user3 = User.create(username:'Jessie', email: 'jes@jes.net')

article1 = Article.create(author: "Michael S. Derby",
title: "Fed’s Kaplan Says Systemic Racism Holding Economy Back - The Wall Street Journal",
description: "‘A more inclusive economy where everyone has opportunity will mean faster workforce growth, faster productivity growth, and we’ll grow faster,’ the Dallas Fed president says",
url: "https://www.wsj.com/articles/feds-kaplan-says-systemic-racism-holding-economy-back-11592163431",
urlToImage: "https://images.wsj.net/im-198264/social",
publishedAt: "2020-06-15T08:14:35Z")


# article2 = Article.create(author: "Edmund DeMarche",
# title: "NBC News called out over tweets about Trump’s Tulsa event and a 'packed' rally in Brooklyn - Fox News",
# description: "NBC News was called out late Sunday over a pair of tweets sent about an hour apart that critics said showed bias when reporting on President Trump rallies and the protests that have emerged in the wake of George Floyd’s death in police custody.",
# url: "https://www.foxnews.com/media/nbc-news-called-out-over-tweet-about-trump-rally-and-packed-crowd-in-brooklyn",
# urlToImage: "https://cf-images.us-east-1.prod.boltdns.net/v1/static/694940094001/1320b660-112f-4106-9278-6c73175e61de/75b3ec89-d6a7-414a-b4d6-4f842205a02b/1280x720/match/image.jpg",
# publishedAt: "2020-06-15T07:10:55Z" )

article3 = Article.create(author: "Reuters",
title: "Supreme Court Declines To Hear Trump's Legal Challenge To 'Sanctuary' Laws",
description: "The justices left in place a lower court ruling that upheld the bulk of three California laws that protect undocumented immigrants from deportation.",
url: "https://www.huffpost.com/entry/supreme-court-trump-administration-sanctuary-city-laws-california-legal-challenge_n_5ee77b95c5b6b416610327f6",
urlToImage: "https://img.huffingtonpost.com/asset/5ee77d7e2200009e2782a9d6.jpeg?cache=h56tplgonk&ops=1778_1000",
publishedAt: "2020-06-15T13:56:55Z")

Favorite.create(user_id: user1.id, article_id: article1.id)
Favorite.create(user_id: user2.id, article_id: article1.id)
Favorite.create(user_id: user1.id, article_id: article3.id)
# Favorite.create(user_id: user3.id, article_id: article2.id)
Favorite.create(user_id: user3.id, article_id: article3.id)

puts "seeded..."
