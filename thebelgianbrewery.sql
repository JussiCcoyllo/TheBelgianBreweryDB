SELECT b.Id,
       b.Name as Beer,
       r.Name as Brewery,
       c.Category as Category,
       b.Price,
       b.Stock,
       b.Alcohol,
       b.Version,
       b.Image

from thebelgianbrewery.beers b
inner join thebelgianbrewery.brewers r on b.BrewerId = r.Id
inner join thebelgianbrewery.categories c on b.CategoryId = c.Id;

SELECT
    b.id,
    b.Name as BeerName,
    b.BrewerId,
    b.CategoryId,
    b.Price,
    b.Stock,
    b.Alcohol,
    b.Version,
    b.Image
FROM thebelgianbrewery.Beers b
INNER JOIN thebelgianbrewery.Categories c ON b.Id = b.Id
WHERE c.Category REGEXP 'Alcoholarm|Alcoholvrij'
      OR b.Name REGEXP  '%J%|St%'
      AND B.Alcohol REGEXP '1|2';






