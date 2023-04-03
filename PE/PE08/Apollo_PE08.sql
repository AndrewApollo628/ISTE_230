USE recipe; 

-- Question #1 
SELECT name FROM recipe WHERE source = 'mom';

-- Question #2
SELECT recipe.name FROM recipe 
    JOIN nutrition USING(recipeid)
    WHERE nutrition.name = 'calories' AND 
    quantity < 800;

-- Question #3 
SELECT ingredients.name, ingredientlist.quantity FROM recipe
    JOIN ingredientlist USING(recipeid)
        JOIN ingredients USING(ingredientid)
            WHERE recipe.name like 'Beef Parm%';

-- Question #4 
SELECT distinct recipe.name FROM recipe 
    WHERE recipeid NOT IN 
    (SELECT ingredientlist.recipeid FROM ingredientlist
        JOIN ingredients USING(ingredientid)
            WHERE ingredients.type IN ('beef', 'chicken', 'pork', 'lamb'));

-- Question #5 
SELECT DISTINCT recipe.name FROM recipe
    JOIN nutrition USING(recipeid)
        JOIN ingredientlist USING(recipeid)
            JOIN ingredients USING(ingredientid)
                WHERE nutrition.name = 'calories' AND nutrition.quantity < 700
                    AND ingredients.type = 'fish';