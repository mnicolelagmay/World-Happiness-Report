
In this project, I analyzed the data from the 2024 World Happiness Report using basic SQL queries.

The dataset was sourced from https://www.kaggle.com/datasets/jainaru/world-happiness-report-2024-yearly-updated?resource=download

Explanation of each column:
1. Country name: Name of the country.
2. Regional indicator: Region to which the country belongs.
3. Ladder score: The happiness score for each country, based on responses to the Cantril Ladder question that asks respondents to think of a ladder, with the best possible life for them being a 10, and the worst possible life being a 0.
4. Upper whisker: Upper bound of the happiness score.
5. Lower whisker: Lower bound of the happiness score.
6. Log GDP per capita: The natural logarithm of the country's GDP per capita, adjusted for purchasing power parity (PPP) to account for differences in the cost of living between countries.
7. Social support: The national average of binary responses(either 0 or 1 representing No/Yes) to the question about having relatives or friends to count on in times of trouble.
8. Healthy life expectancy: The average number of years a newborn infant would live in good health, based on mortality rates and life expectancy at different ages.
9. Freedom to make life choices: The national average of responses to the question about satisfaction with freedom to choose what to do with one's life.
10. Generosity: The residual of regressing the national average of responses to the question about donating money to charity on GDP per capita.
11. Perceptions of corruption: The national average of survey responses to questions about the perceived extent of corruption in the government and businesses.
12. Dystopia + residual: Dystopia is an imaginary country with the world’s least-happy people, used as a benchmark for comparison. The dystopia + residual score is a combination of the Dystopia score and the unexplained residual for each country, ensuring that the combined score is always positive. Each of these factors contributes to the overall happiness score, but the Dystopia + residual value is a benchmark that ensures no country has a lower score than the hypothetical Dystopia.


