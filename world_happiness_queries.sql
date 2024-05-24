-- View the World Happiness Report Table
SELECT * FROM world_happiness;

-- Arrange the countries by ladder score from highest to lowest
-- Ladder score: The happiness score for each country, based on responses to the Cantril Ladder question that asks respondents to think of a ladder, with the best possible life for them being a 10, and the worst possible life being a 0
SELECT
	country_name AS 'Country Name',
    regional_indicator AS 'Region',
    ladder_score AS 'Ladder Score'
FROM world_happiness
ORDER BY ladder_score DESC;

-- Count the number of countries per region in descending order
SELECT
	regional_indicator AS 'Region',
    COUNT(country_name) AS 'Number of Countries'
FROM world_happiness
GROUP BY regional_indicator
ORDER BY COUNT(country_name) DESC;

-- View the average ladder score per region
SELECT
	regional_indicator AS 'Region',
    ROUND(AVG(ladder_score), 3) AS 'Average Ladder Score'
FROM world_happiness
GROUP BY regional_indicator;

-- Find the happiest country per region (based on ladder score)
SELECT
	regional_indicator AS 'Region',
	country_name AS 'Country Name',
	MAX(ladder_score) AS 'Ladder Score'
FROM world_happiness
GROUP BY regional_indicator;

-- Find the top 5 countries with the highest satisfaction regarding their freedom to make life choices
-- Freedom to make life choices: The national average of responses to the question about satisfaction with freedom to choose what to do with one's life.
SELECT
	country_name AS 'Country Name',
    ladder_score AS 'Ladder Score',
    freedom_to_make_life_choices AS 'Freedom Satisfaction Score'
FROM world_happiness
ORDER BY freedom_to_make_life_choices DESC
LIMIT 5;

-- View the healthy life expectancy score of countries in the Latin America and Carribean Region compared to the region average
-- Healthy life expectancy: The average number of years a newborn infant would live in good health, based on mortality rates and life expectancy at different ages.
SELECT
	country_name AS 'Country Name',
    healthy_life_expectancy AS 'Healthy Life Expectancy Score',
    ROUND(AVG(healthy_life_expectancy) OVER(PARTITION BY regional_indicator), 3) AS 'Average Healthy Life Expectancy Score'
FROM world_happiness
WHERE regional_indicator='Latin America and Caribbean';

-- Find the top 3 regions with the lowest social support score
-- Social support: The national average of binary responses(either 0 or 1 representing No/Yes) to the question about having relatives or friends to count on in times of trouble.
SELECT
	regional_indicator AS 'Region',
    ROUND(AVG(social_support), 3) AS 'Average Social Support Score'
FROM world_happiness
GROUP BY regional_indicator
ORDER BY ROUND(AVG(social_support), 3)
LIMIT 3;

-- Select the countries with a Generosity score of 0.25 and above
-- Generosity: The residual of regressing the national average of responses to the question about donating money to charity on GDP per capita.
SELECT
	country_name AS 'Country Name',
    generosity AS 'Generosity Score'
FROM world_happiness
WHERE generosity >= 0.25
ORDER BY generosity DESC;