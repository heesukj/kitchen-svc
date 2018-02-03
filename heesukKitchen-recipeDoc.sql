db.recipe.insert({
	title: 'California Rolls', 
	koreanTitle: '캘리포니아 롤',
	imagePath: '/images/california-roll.jpg',
	category: 'Japanese - Sushi',
	meal: ['Lunch'],
	totalTime: '1 hr 15 min', 
	prepTime: '50 min', 
	cookTime: '25 min', 
	yield: '6 serviings', 
	level: 'Advanced', 
	ingredients: ['3 1/3 cups rice', '5 1/3 tablespoons vinegar', '5 tablespoons sugar', '3 tablespoons salt', '10 sheets swaweed, three-quarterd', '1/2 pound imitation crab, cut into long, thin pieces','1/3 cup mayonnaise', '1 cucumber, seeded, and julienne', '1 avocado, peeled, seeded, and cut into long, thin pieces', '6 tablespoons flying fish roe', '1 tablespoon wasabi'],
	directions: ['Make Rice', 'Prepare Vegetables and Meat', 'Make a Roll']
})

db.recipe.insert({
	title: 'Galbee - Korean Beef Short Ribs BBQ', 
	koreanTitle: '갈비',
	imagePath: '/images/galbee.jpg',
	category: 'Korean - Beef BBQ',
	meal: ['Lunch', 'Dinner'],
	totalTime: '1 hr 10 min', 
	prepTime: '40 min', 
	cookTime: '30 min', 
	yield: '4 to 6 serviings', 
	level: 'Intermediate', 
	ingredients: ['2 pounds or 15 Korean short ribs', '7 or 8 tablespoons soy sauce', '1 1/2 cups pear or onion juice', '4 tablespoons rice wine', '3 1/2 tablespoons sugar', '2 tablespoons honey', '2 tablespoons sesame oil', '1 1/2 teaspoons back pepper power', '1 or 2 tablespoons chopped garlic', '1 or 2 tablespoons chopped green onion', '1 tablespoon sesame seeds'],
	directions: ['Make Marinade Sauce', 'Prepare Meat', 'Marinade the Meat', 'Grill']
})

db.recipe.insert({
	title: 'Deokbokkee - Spicy Rick Cake', 
	koreanTitle: '떡볶이',
	imagePath: '/images/teokbokkee.jpg',
	category: 'Korean Snack',
	totalTime: '55 min', 
	prepTime: '25 min', 
	cookTime: '30 min', 
	yield: '4 to 5 serviings', 
	level: 'Intermediate', 
	ingredients: ['4 cups water', '1 pound rice cake', '1 1/2 cups of long cut fish cake (optional)', '2 or 3 shelled hard-boiled eggs (optional)', '2 tablespoons chopped green onion', '2/3 cup sugar', '1 tablespoon red chilli flakes (gochugaru)', '1/3 cup red chilli paste (gochujang)', '1/2 cup soy sauce', '1 or 2 tablespoons chopped green onion', '1 tablespoon sesame seeds'],
	directions: ['Make Sauce', 'Boil Water', 'Add Sauce, rice cake, eggs, and fish cake into the pot', 'Boil for about 7 minutes while gently stiring once in a while', 'Add vegetables and boil additional 2 or 3 minutes', 'Serve']
})
-- Bean sprout soup
db.recipe.insert({
	title: 'Stir-fried Spicy Pork',
	koreanTitle: '제육볶음',
	koreanTitlePron: 'Jaeyukbokkum',
	imagePath: '/assets/images/jaeuokbokkm.png',
	category: 'Stir-fry',
	meal: ['Lunch', 'Dinner'],
	caloriesPerServing: '572',
	totalTime: '45 min',
	prepTime: '30 min',
	cookTime: '15 min',
	yield: '3 to 4 servings',
	level: 'Intermediate',
	ingredients: ['1 pound pork belly, cut into bite size pieces', '1/2 cup gochujang (red pepper paste)', '1 tablespoon soy sauce', '1 tablespoon sugar', '2 tablespoon2 gochugaru (red pepper powder)', '1/2 teaspoon ground black pepper', '3 cloves garlic, minced', '1 tablespoon sesame oil', '1/2 medium-sized onion, sliced', '1 green asian pepper', '1 teaspoon sesame seeds'],
    directions: ["In a medium-sized bowl, add pork, gochujang, soy sauce, sugar, gochugaru, black pepper, garlic, and sesame oil and them mix them well.","Marinated them for at least 15 minutes upto overnight.","Add onion and green asian pepper into the marinated meat.", "Stir-fry them in a skillet with a medium high heat for about 15 minutes or until cooked.", "Serve with a spinckle of sesame seeds on top."],
    description: ["Jayookbokkum is a delicious Korean dish that consists of marinated pork loin which are stir-fried with kimchi (optional), onion, green asian pepper, garlic, and gochujang (red pepper paste).", "When making this dish, gochujang is the key base sauce to control the flavor and its level of spiciness. If preferred, soy sauce can be substitued instead."]
})
-- /Users/dev/heesukjang/heesuk-kitchen
-- /Users/dev/heesukjang/kitchen-svc

-- To copy all the files in heesuk-kitchen to kitchen-svc folder:
-- 		in heesuk-kitchen directory: $cp -rp * ../kitchen-svc/
-- 		in heesukjang directory: $cp -rp heesuk-kitchen/*  kitchen-svc/

db.recipe.update(
   { "_id" : ObjectId("5a46932e99269aadec1d11f1") },
   {
    $set: { title: "Spicy Rice Cake" },
    $set: { caloriesPerServing: "265" },
    $set: { koreanTitlePron: "DeokBokGi" }
   }
)

db.recipe.update(
   { "_id" : ObjectId("5a70f868f09d9f03930ba4f9") },
   {
    $set: { totalTime: "50 min" }
   }
)
db.recipe.update(
   { "_id" : ObjectId("5a74aa6b1a49d24d5d879ce9") },
   {
    $set: { description: ["Galbi (갈비) is a type of gui (grilled dish) in Korean cuisine.,Galbi is the Korean word for rib, and the dish is usually made with beef short ribs.,When pork spareribs or another meat is used instead, the dish is named accordingly. Galbi is served raw, then cooked on tabletop grills usually by the diners themselves.The dish may be marinated in a sweet and savory sauce usually containing soy sauce, garlic, and sugar. Both non-marinated and marinated galbi are often featured in Korean barbecue."] }
   }
)
-- update values of caloriesPerServing and add koreanTitlePron attributes
db.recipe.update(
   { "_id" : ObjectId("5a6962a7c2e33ffa6b6a7e2e") },
   {
    $set: { level: "Advanced" }
   }
)
db.recipe.update(
   { "_id" : ObjectId("5a46983699269aadec1d11f3") },
   {
    $set: { caloriesPerServing: "395" },
    $set: { koreanTitlePron: "" }
   }
)
-- update categories of recipes
db.recipe.update(
   { "_id" : ObjectId("5a46932e99269aadec1d11f1") },
   {
    $set: { category: "Snack" }

   }
)
db.recipe.update(
   { "_id" : ObjectId("5a46934199269aadec1d11f2") },
   {
    $set: { category: "BBQ" }
   }
)
db.recipe.update(
   { "_id" : ObjectId("5a46983699269aadec1d11f3") },
   {
    $set: { category: "Rice" }
   }
)
-- update descriptions of recipes
db.recipe.update(
   { "_id" : ObjectId("5a46932e99269aadec1d11f1") },
   {
    $set: { description: ["Spice rice cake (떡볶이: DeokBokGi) is a popular Korean street food made from soft rice cake, fish cake, and sweet chili sauce (gochujang).", "It is commonly purchased from street vendors or pojangmacha."] }

   }
)
db.recipe.update(
   { "_id" : ObjectId("5a46983699269aadec1d11f3") },
   {
    $set: { description: ["A California roll or California maki is a makizushi sushi roll, usually made inside-out, containing cucumber, crab meat or imitation crab, and avocado. Sometimes crab salad is substituted for the crab stick, and often the outer layer of rice in an inside-out roll (uramaki) is sprinkled with toasted sesame seeds, tobiko or masago (capelin roe)."] }
   }
)

-- update descriptions of recipes
db.recipe.update(
   { "_id" : ObjectId("5a46932e99269aadec1d11f1") },
   {
    $set: { imagePath: "/assets/images/spicy-rice-cake.png" }

   }
)
db.recipe.update(
   { "_id" : ObjectId("5a46932e99269aadec1d11f1") },
   {
    $set: { month: 11 }
   }
)
db.recipe.update(
   { "_id" : ObjectId("5a46932e99269aadec1d11f1") },
   {
    $set: { year: 2017 }
   }
)
db.recipe.update(
   { "_id" : ObjectId("5a46983699269aadec1d11f3") },
   {
    $set: { meal:"Lunch" }

   }
)
db.recipe.update(
   { "_id" : ObjectId("5a46934199269aadec1d11f2") },
   {
    $set: { meal: ["Lunch", "Dinner"] }
   }
)
db.recipe.update(
   { "_id" : ObjectId("5a693d40c2e33ffa6b6a7e2d") },
   {
    $set: { imagePath: "/assets/images/california-roll.png" }
   }
)

db.recipe.update(
   { "_id" : ObjectId("5a693d40c2e33ffa6b6a7e2d") },
   {
    $set: { caloriesPerServing: "127" }
   }
)
db.recipe.update(
   { "_id" : ObjectId("5a46932e99269aadec1d11f1") },
   {
    $set: { description: ["Spice rice cake (떡볶이: DeokBokGi) is a popular Korean street food made from soft rice cake, fish cake, and sweet chili sauce (gochujang). It is commonly purchased from street vendors or pojangmacha."] }
   }
)
.recipe.update(
   { "_id" : ObjectId("5a46932e99269aadec1d11f1") },
   {
    $set: { koreanTitlePron: "DeokBokGi" }
   }
)
db.recipe.update(
   { "_id" : ObjectId("5a46934199269aadec1d11f2") },
   {
    $set: { koreanTitlePron: "GalBi" }
   }
)
-- connect to the remote Atlas server:
Heesuks-MacBook-Pro:kitchen-svc heesukjang$ mongo "mongodb://kitchen-cluster0-shard-00-00-o0us2.mongodb.net:27017,kitchen-cluster0-shard-00-01-o0us2.mongodb.net:27017,kitchen-cluster0-shard-00-02-o0us2.mongodb.net:27017/kitchendb?replicaSet=kitchen-cluster0-shard-0" --ssl --authenticationDatabase admin --username heesuk-admin --password <admin password>  => to bring mongo db prompt
> show databases;
> use kitchendb
> db.recipe.find().pretty()
> db.recipe.insert({})
> db.recipe.update({})

