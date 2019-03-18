use default;




create view country_total (country, year2016, year2015, year2014, year2013, year2012, year2011, year2010, year2009, year2008, year2007, year2006)
as select country, sum(year2016), sum(year2015), sum(year2014), sum(year2013), sum(year2012), sum(year2011), sum(year2010), sum(year2009), sum(year2008), sum(year2007), sum(year2006)
from fish_catch group by country;

select * from country_total order by year2016 desc;



create view NO (country, species, 2016TotalLiveTons) as
select country, species, sum(year2016) from fish_catch where country="NO" group by country, species;

select * from no order by 2016totallivetons desc;



create view species_total (species, year2016, year2015, year2014, year2013, year2012, year2011, year2010, year2009, year2008, year2007, year2006)
as select species, sum(year2016), sum(year2015), sum(year2014), sum(year2013), sum(year2012), sum(year2011), sum(year2010), sum(year2009), sum(year2008), sum(year2007), sum(year2006)
from fish_catch group by species;

select * from country_total order by year2016 desc;



create view HER (country, species, 2016TotalLiveTons) as
select country, species, sum(year2016) from fish_catch where species="HER" group by country, species;

select * from her order by 2016totallivetons desc;