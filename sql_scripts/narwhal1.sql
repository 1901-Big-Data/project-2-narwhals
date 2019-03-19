select country, species from
(select country, species, year2016, year2015, year2014, year2013, year2012 from fish_catch where year2016<year2015 and year2015<year2014 and year2014<year2013 and year2013<year2012) fish_catch
group by country, species;

select country, species, changerate from
(select country, species, (year2012-year2016)/year2012 as changerate from fish_catch where country="FR" or country="ES") fish_catch where changerate < 0;
