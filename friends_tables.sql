create table user(
	user_id int NOT NULL UNIQUE AUTO_INCREMENT /* INT-tyyppinen, constraints = NOT NULL UNIQUE AUTO_INCREMENT */,
    username varchar(255) NOT NULL UNIQUE,
	pass varchar(255) NOT NULL,
    /* Every table has a primary key that is one of the attributes defined.
       In our case it is user_id  */
    primary key(user_id)
)Engine=InnoDb; /* minkälaista engineä käytetään */

create table friend(
	friend_id int NOT NULL UNIQUE AUTO_INCREMENT,
    friend_name varchar(255),
    friend_address varchar(255),
    friend_age int,
    user_id int /* tällä taulut sidotaan yhteen => saman niminen kuin taulussa user */,
    primary key(friend_id),
    foreign key(user_id) references user(user_id) /* viittaa user-taulussa olevaan user_id muuttujaan */
)Engine=InnoDB;

/* tuhoaa taulun user */
/*drop table user;*/
/* => voi tuhota myös oikealla hiirellä */
