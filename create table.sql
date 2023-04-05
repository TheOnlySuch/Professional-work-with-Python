create table Genres(
Genres_id serial primary key,
name varchar(100)
)

create table Singer(
Singer_id serial primary key,
name varchar(100)
)

create table Albums(
Albums_id serial primary key,
name varchar (100),
year_of_release integer
)

create table Songs (
Songs_id serial primary key,
name varchar (100),
duration time,
Album integer references Albums(albums_id)
)

create table Genres_Singer(
Genres_id integer references Genres(Genres_id),
Singer_id integer references Singer(Singer_id)
)

create table Singer_Albums(
Singer_id integer references Singer(Singer_id),
Albums_id integer references Albums(Albums_id)
)

create table Collection(
Collection_id serial primary key,
name varchar(100),
year_of_release integer
)

create table Collection_Songs(
Songs_id integer references Songs(Songs_id),
Collection_id integer references Collection(Collection_id)
)



