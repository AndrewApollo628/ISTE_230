-- Andrew Apollo
-- ISTE 230 Section 2 
-- Prof French 
-- Script File for Practice Exercise 8 

USE recipes; 

-- Question #1 - Goal: Show recipies that source is Mom 
SELECT name FROM recipe WHERE source = 'mom';

-- Question #2 - Goal: find recipe names that have fewer than 800 calories per serving
SELECT recipe.name FROM recipe 
    JOIN nutrition USING(recipeid)
    WHERE nutrition.name = 'calories' AND 
    quantity < 800;

-- Question #3 - Goal: Create a shopping list of ingrediants and their quantity for the Beef Parmesan Recipe 
SELECT ingredients.name, ingredientlist.quantity FROM recipe
    JOIN ingredientlist USING(recipeid)
        JOIN ingredients USING(ingredientid)
            WHERE recipe.name like 'Beef Parm%';

-- Question #4 - Goal: Find recipes that do not use beef,pork, chicken, or lamb
SELECT distinct recipe.name FROM recipe 
    WHERE recipeid NOT IN 
    (SELECT ingredientlist.recipeid FROM ingredientlist
        JOIN ingredients USING(ingredientid)
            WHERE ingredients.type IN ('beef', 'chicken', 'pork', 'lamb'));

-- Question #5 - Goal: Find the names of fish recipes that have fewer than 700 calories per serving
SELECT DISTINCT recipe.name FROM recipe
    JOIN nutrition USING(recipeid)
        JOIN ingredientlist USING(recipeid)
            JOIN ingredients USING(ingredientid)
                WHERE nutrition.name = 'calories' AND nutrition.quantity < 700
                    AND ingredients.type = 'fish';