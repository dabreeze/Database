use Movie;

create table actor(
`act_id` int not null, 
`act_fname` varchar(20) not null,
`act_lname` varchar(20) not null, 
`act_gender` varchar(1) not null, 
 constraint actor_PK Primary Key(act_id)
 );
 
 create table director
 (
 `dir_id` int not null,
 `dir_fname` varchar(20) not null,
 `dir_lname` varchar(20) not null,
 constraint director_PK Primary Key(dir_id)
 );
 
 create table movie(
 `mov_id` int not null,
 `mov_title` varchar(50) null,
 `mov_year` int null,
 `mov_time` int  null,
 `mov_lang` varchar(50) null,
 `mov_dt_rl` date,
 `mov_rel_country` varchar(50) null,
 constraint movie_PK primary key(mov_id)
 );
 
 create table genre(
 `gen_id` int not null,
 `gen_title` varchar(20) null,
 constraint genre_PK primary key(gen_id)
 );
 
 create table reviewer(
 `rev_id` int not null,
 `rev_name` varchar(30) null,
 constraint reviewer_PK primary key(rev_id)
 );
 
 create table movie_cast(
 `act_id` int not null,
 `mov_id` int not null,
 `role` varchar(30) not null,
 constraint movie_cast_PK primary key(act_id, mov_id),
 constraint movie_FK foreign key(mov_id) references movie(mov_id),
 constraint actor_FK foreign key(act_id) references actor(act_id)
 );
 
 create table movie_genre(
 `mov_id` int not null,
 `gen_id` int not null,
 constraint movie_genre_PK primary key(mov_id, gen_id),
 constraint genre_FK foreign key(mov_id) references movie(mov_id),
 constraint movieGen_FK foreign key(gen_id) references genre(gen_id)
 );
 
 create table rating(
 `mov_id` int not null,
 `rev_id` int not null,
 `rev_stars` int null,
 `num_o_ratings` int null,
 constraint rating_PK Primary key(mov_id, rev_id)
  -- constraint reve_FK foreign key(mov_id) references movie(mov_id),
 -- constraint rev_FK foreign key(rev_id) references reviewer(rev_id)
 );
 
 create table movie_direction(
 `dir_id` int not null,
 `mov_id` int not null,
 constraint mov_dir_PK primary key(dir_id, mov_id),
 constraint mov_dir_FK foreign key(dir_id) references director(dir_id),
 constraint mov_direct_FK foreign key(mov_id) references movie(mov_id)
 );
 

 