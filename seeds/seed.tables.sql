BEGIN;
TRUNCATE 
    "user";
INSERT INTO "user" ("id", "username", "name", "password")
    VALUES
    (
        1,
        'kay',
        'kayleigh',
        -- password = "pass"
        '$2a$10$fCWkaGbt7ZErxaxclioLteLUgg4Q3Rp09WW0s/wSLxDKYsaGYUpjG'
    );
INSERT INTO "project" (name, team_size, stack, summary, role, prod_url, client_git, server_git)
VALUES (
	'Donation-Hub',
	4,
	'PERN',
	'In most scenarios, people are willing to donate. However, it is not always clear what organizations need or how much of what they are seeking is needed. To help strengthen the donation process, we decided to create Donation-Hub. Donation-Hub exists as a way to centralize the efforts community champions (donators) need to best serve their communities. By using the Donation-Hub website, users can locate an organization near them, browse items that are needed, and give as they please accordingly. Users are also able to go in and add donation sites for organizations that may not be as internet accessible.',
	'In a team of 3 other student developers, my role played parts in all aspects of creating this app. However, the majority of my efforts were spent developing the client-side. I am most proud of designing and creating the route contents for adding a new donation center. I took advantage of the Google API we were already using where ever I could, while also keeping the request count to the bare minimum. Though I am proud of the result I look forward to adding more instructions for the user, in case they grow confused when adding details to the location.',
	'https://donation-hub-client.vercel.app/',
	'https://github.com/kayleighkat98/donation-hub-client',
	'https://github.com/jbugayev18/DonationHub-API'
),(
	'Kitchen Hero',
	1,
	'PERN',
	'Face it. We do not always remember what we have in our fridge. This means that sometimes we have to face terribly rotten food when deep cleaning. Would it not be nice to have an easy reference for what has expired in your pantry and fridge? Introducing Kitchen-Hero. Log in to add the ingredients you have and if/when they expire. If you are a returning user, take a look to see if any of your items have expired and throw them away before they get moldy!',
	'As the sole creator of Kitchen Hero, I imagined and birthed what it is today. I am most proud of the concept Kitchen-Hero is founded on. I have had a decent amount of struggle finding a proper solution when managing my kitchen even after scouring the web for resources. This is a passion project, that in time will have more incredible features such as generating recipes based on user preference and inventory.',
	'https://kitchen-hero.kayleighkat98.vercel.app/',
	'https://github.com/kayleighkat98/kitchen_hero-client',
	'https://github.com/kayleighkat98/kitchen_hero-server'
),(
	'FIFO Pet Adoptions',
	2,
	'PERN',
	'FIFO Pet Adoptions is an adoption agency app that uses singly-linked lists to adopt out pets on a first-come-first-serve basis. By signing up for adoption, a user will be added to a list and will then be able to adopt a pet based on the oldest pet available at the time.',
	'Tiffany Summerford (my partner in this project) and I set out to divide and conquer with this app. I designed and implemented the front end while she did the same with the server. I am most proud of the recursive timeout function I made to demo the adoption process. The function is made to slowly work the user to the front of the line by removing the first person and a random pet every 5 seconds until the user is first, then with the same timeout add a random person to the end of the line until there is a total of 5 in line. Though I am proud of the result, I look forward to adding more features. For example, I plan to display a record of past adoptions as well as display a time-countdown when running the demo.',
	'https://petful-client-peach.vercel.app/',
	'https://github.com/thinkful-ei-quail/DSA-Petful-Client-kay-tiff',
	'https://github.com/thinkful-ei-quail/DSA-Petful-Server-Tiff-Kayleigh'
);
INSERT INTO "image" (project_id, type, label, url)
VALUES ( 1, 'mobile', 'landing', 'https://res.cloudinary.com/youngunderson/image/upload/v1611121567/Portfolio/donation-hub/landing.png'
),( 1, 'mobile', 'location', 'https://res.cloudinary.com/youngunderson/image/upload/v1611121567/Portfolio/donation-hub/location.png'
),( 1, 'mobile', 'items', 'https://res.cloudinary.com/youngunderson/image/upload/v1611121567/Portfolio/donation-hub/items.png'
),( 1, 'mobile', 'results','https://res.cloudinary.com/youngunderson/image/upload/v1611121567/Portfolio/donation-hub/results.png'
),( 1, 'mobile', 'confirm', 'https://res.cloudinary.com/youngunderson/image/upload/v1611121567/Portfolio/donation-hub/confirm.png'
),( 1, 'mobile', 'review', 'https://res.cloudinary.com/youngunderson/image/upload/v1611121567/Portfolio/donation-hub/review.png'
),( 1, 'mobile', 'user', 'https://res.cloudinary.com/youngunderson/image/upload/v1611121568/Portfolio/donation-hub/user.png'
),(	2, 'mobile', 'home', 'https://res.cloudinary.com/youngunderson/image/upload/v1611122001/Portfolio/kitchen-hero/home.png'
),( 2, 'mobile', 'expired', 'https://res.cloudinary.com/youngunderson/image/upload/v1611122001/Portfolio/kitchen-hero/expired.png'
),( 2, 'mobile','kitchen','https://res.cloudinary.com/youngunderson/image/upload/v1611122001/Portfolio/kitchen-hero/kitchen.png'
),( 3, 'desktop', 'adopt', 'https://res.cloudinary.com/youngunderson/image/upload/v1611122344/Portfolio/petful/adopt.png'
),( 3, 'desktop', 'landing', 'https://res.cloudinary.com/youngunderson/image/upload/v1611122344/Portfolio/petful/landing.png'
),( 3, 'desktop', 'wait', 'https://res.cloudinary.com/youngunderson/image/upload/v1611122344/Portfolio/petful/wait.png'
);
INSERT INTO "tech" (label, stack, project_id )
VALUES ('BcryptJS', 'back', ARRAY[1,2]
),( 'Body Parser', 'back', ARRAY[3]
),( 'Chai', 'back', ARRAY[1,2]
),( 'Classnames', 'front', ARRAY[1,2]
),( 'CORS', 'back', ARRAY[1,2,3]
),( 'Cross Env', 'front', ARRAY[1,2]
),( 'Dotenv', 'back', ARRAY[1,2,3]
),( 'Express', 'back', ARRAY[1,2,3]
),( 'Fetch', 'back', ARRAY[1]
),( 'Google Maps API', 'front', ARRAY[1]
),( 'Google Places API', 'front', ARRAY[1]
),( 'Helmet', 'back', ARRAY[1, 2, 3]
),( 'Jsonwebtoken', 'back', ARRAY[1,2]
),( 'JWT Decode', 'front', ARRAY[1,2,3]
),( 'Knex', 'back', ARRAY[1,2,3]
),( 'Mocha', 'back', ARRAY[1,2]
),( 'Morgan', 'back', ARRAY[1,2,3]
),( 'Node', 'back', ARRAY[1,2,3]
),( 'Nodemon', 'back', ARRAY[1,2,3]
),( 'Pg', 'back', ARRAY[1,2,3]
),( 'Postgrator CLI', 'back', ARRAY[1,2,3]
),( 'React', 'front', ARRAY[1,2,3]
),( 'React Router', 'front', ARRAY[1,2,3]
),( 'Supertest', 'back', ARRAY[1,2,3]
),( 'UUID', 'back', ARRAY[3]
),( 'Winston', 'back', ARRAY[3]
),( 'XSS', 'back', ARRAY[1,2]
);

COMMIT;