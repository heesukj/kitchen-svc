db.heesukKitchen.insert({
	title: 'California Rolls', 
	koreanTitle: '캘리포니아 롤',
	imagePath: '/images/california-roll.jpg',
	category: 'Japanese - Sushi', 
	totalTime: '1 hr 15 min', 
	prepTime: '50 min', 
	cookTime: '25 min', 
	yield: '6 serviings', 
	level: 'Advanced', 
	ingredients: ['3 1/3 cups rice', '5 1/3 tablespoons vinegar', '5 tablespoons sugar', '3 tablespoons salt', '10 sheets swaweed, three-quarterd', '1/2 pound imitation crab, cut into long, thin pieces','1/3 cup mayonnaise', '1 cucumber, seeded, and julienne', '1 avocado, peeled, seeded, and cut into long, thin pieces', '6 tablespoons flying fish roe', '1 tablespoon wasabi'],
	directions: ['Make Rice', 'Prepare Vegetables and Meat', 'Make a Roll']
})

db.heesukKitchen.insert({
	title: 'Galbee - Korean Beef Short Ribs BBQ', 
	koreanTitle: '갈비',
	imagePath: '/images/galbee.jpg',
	category: 'Korean - Beef BBQ',
	totalTime: '1 hr 10 min', 
	prepTime: '40 min', 
	cookTime: '30 min', 
	yield: '4 to 6 serviings', 
	level: 'Intermediate', 
	ingredients: ['2 pounds or 15 Korean short ribs', '7 or 8 tablespoons soy sauce', '1 1/2 cups pear or onion juice', '4 tablespoons rice wine', '3 1/2 tablespoons sugar', '2 tablespoons honey', '2 tablespoons sesame oil', '1 1/2 teaspoons back pepper power', '1 or 2 tablespoons chopped garlic', '1 or 2 tablespoons chopped green onion', '1 tablespoon sesame seeds'],
	directions: ['Make Marinade Sauce', 'Prepare Meat', 'Marinade the Meat', 'Grill']
})

db.heesukKitchen.insert({
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
-- /Users/dev/heesukjang/heesuk-kitchen
-- /Users/dev/heesukjang/kitchen-svc

-- To copy all the files in heesuk-kitchen to kitchen-svc folder:
-- 		in heesuk-kitchen directory: $cp -rp * ../kitchen-svc/
-- 		in heesukjang directory: $cp -rp heesuk-kitchen/*  kitchen-svc/
