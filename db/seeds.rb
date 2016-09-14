Recipe.create!([
  {chef: "Mac Tonight", title: "Moon Pies", ingredients: "pies, moon, dirt, drugs", directions: "put in a pan and bake, get stoned", image: "http://farm7.static.flickr.com/6135/5953854603_9ef65eb18c.jpg", prep_time: 5},
  {chef: "Cookie Monster", title: "Cookies", ingredients: "cookie mix, milk, eggs", directions: "pour mix into bowl, add milk and eggs, stir well, bake", image: "https://img1.etsystatic.com/000/0/5769293/il_fullxfull.260540729.jpg", prep_time: 500},
  {chef: "Ronald McDonald", title: "Burger Sushi", ingredients: "two all beef patties, special sauce, lettuce, cheese, pickles, onions, sesame seed bun", directions: "go to mcdonalds, deconstruct burger, roll into sushi", image: "http://cdn.trendhunterstatic.com/thumbs/burger-sushi.jpeg", prep_time: 75},
  {chef: "Boyardee", title: "Hotdog Cake", ingredients: "frankfurters, cabbage, pimento, sauerkraut", directions: "boil everything in a pot, dump on plate, arrange with toothpicks", image: "http://www.deludeddiva.com/wp-content/uploads/2010/02/HotDog.jpg", prep_time: 210},
  {chef: "Capt. Kevin Bacon", title: "Bacon Bits", ingredients: "bacon, regret", directions: "fry, flip, fry and cry", image: "http://2.bp.blogspot.com/-Z6uU3Lkojv8/TmuXJsQid0I/AAAAAAAAYto/1z6LoKs8UrM/s550/Bacon%2BBits.jpg", prep_time: 3},
  {chef: "Really Bad Josh", title: "Hand Sandwich", ingredients: "left hand, right hand", directions: "put your hands together Wisconsin!!", image: "https://s-media-cache-ak0.pinimg.com/236x/21/cf/9e/21cf9e6f1a1a29191532f876114821f4.jpg", prep_time: 1}
])
User.create!([
  {name: "Joe", email: "joe@gmail.com", password_digest: "$2a$10$0S11Lr2L6gqD13aamEbRQercgh4aLdXk48pbQ1UNj1NzXMoj2jpda"},
  {name: "Joe", email: "joe@gmail.com", password_digest: "$2a$10$J0q4IoVyPi4TJFTZ7zW/wuSPSBpEpBCS9vXIiEI7Qr4FyxP6srfji"},
  {name: "bob", email: "bob@gmail.com", password_digest: "$2a$10$hrhAAy3PLLB5J.OoAsPQMep8KJ5vxDdSsUrqgNothtWlUq8fc6wu2"},
  {name: "henry", email: "henry@gmail.com", password_digest: "$2a$10$h6gS.CfRnXbrMw.Jjf4z6.XaPLS.KeAu88hITRP3eSmlFcCOZZTl6"}
])
