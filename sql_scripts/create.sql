use default;

drop table if exists fish_catch;

create table if not exists fish_catch(
	species varchar(50),
	area varchar(50),
	country varchar(50),
	year2016 double,
	year2015 double,
	year2014 double,
	year2013 double,
	year2012 double,
	year2011 double,
	year2010 double,
	year2009 double,
	year2008 double,
	year2007 double,
	year2006 double)
row format delimited
fields terminated by '\001';
