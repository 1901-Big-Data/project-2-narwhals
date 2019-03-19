use default;

select country, species, max(average_over_14to16) as max_of_average
from (select species, country, area, avg(year2016+year2015+year2014)/3 as average_over_14to16 from fish_catch where (species='PNV' or species='GIT' or species='AKS' or species='TRV' or species='FLP' or species='PBA' or species='PRA') group by species, country, area) fish_catch
group by country, species;

select country, species, max(average_over_14to16) as max_of_average 
from (select species, country, area, avg(year2016+year2015+year2014)/3 as average_over_14to16 from fish_catch where species='YFT' group by species, country, area) fish_catch
group by country, species;
