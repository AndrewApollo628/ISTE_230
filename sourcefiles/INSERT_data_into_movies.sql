USE imdbmovies;

INSERT INTO directors VALUES (1,'Sam Mendes','Sir Samuel Alexander Mendes CBE is a British film and stage director, producer, and screenwriter. In theatre, he is known for his dark re-inventions of the stage musicals Cabaret, Oliver!, Company, and Gypsy. He directed an original West End stage musical for the first time with Charlie and the Chocolate Factory. '),(2,'Michael Bay','Michael Benjamin Bay is an American film director and producer. He is best known for making big-budget, high-concept action films characterized by fast cutting, stylistic cinematography and visuals, and extensive use of special effects, including frequent depictions of explosions.');

INSERT INTO stars VALUES (1,'Richard Madden','Richard Madden is a Scottish actor. He was cast in his first role at age 11 and made his screen acting debut in 2000. He later began performing on stage whilst a student at the Royal Conservatoire of Scotland.'),(2,'Dean Chapman','He plays Lance Corporal Blank in the movie and he dies.'),(3,'Will Smith','Willard Carroll Smith II, also known by his stage name The Fresh Prince, is an American actor, rapper, and film producer. '),(4,'Martin Lawrence','Will Smiths partner');

INSERT INTO genres VALUES (1,'War/Drama'),(2,'History'),(3,'Action');

INSERT INTO movies VALUES (1,'1917',2019,'https://upload.wikimedia.org/wikipedia/en/thumb/f/fe/1917_%282019%29_Film_Poster.jpeg/220px-1917_%282019%29_Film_Poster.jpeg','R',119,8.3,'During World War I, two British soldiers -- Lance Cpl. Schofield and Lance Cpl. Blake -- receive seemingly impossible orders. In a race against time, they must cross over into enemy territory to deliver a message that could potentially save 1,600 of their fellow comrades -- including Blake\'s own brother.',78,540000,385),(2,'Bad Boys',1995,'https://upload.wikimedia.org/wikipedia/en/thumb/a/a8/Bad_Boys.jpg/220px-Bad_Boys.jpg','R',119,6.8,'Two hip detectives protect a witness to a murder while investigating a case of stolen heroin from the evidence storage room from their police precinct.',41,258000,141);

INSERT INTO movies_directors VALUES (1,1),(2,2);

INSERT INTO movies_genres VALUES (1,1),(1,2),(1,3),(2,3);

INSERT INTO movies_stars VALUES (1,1),(1,2),(2,3),(2,4);