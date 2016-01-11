/* Lisätään dummy dataa tietokannan tauluihin */
INSERT INTO user (username,pass) VALUES ("timppa","test123");
INSERT INTO user (username,pass) VALUES ("kalle","test123");

/* Lisätään user:ille ystäviä. Dummy dataa */
INSERT INTO friend(friend_name,friend_address,friend_age,user_id)
values("Jussi Juonio","Juoniokuja 2","20",1);

INSERT INTO friend(friend_name,friend_address,friend_age,user_id)
values("Heikki Hela","Helatie 44","56",1);

INSERT INTO friend(friend_name,friend_address,friend_age,user_id)
values("Risto Reipas","Reipaskuja 22","14",1);

INSERT INTO friend(friend_name,friend_address,friend_age,user_id)
values("Teemu Selänne","Sun Avenue 34","44",3);

INSERT INTO friend(friend_name,friend_address,friend_age,user_id)
values("Kimmo Kuhta","Kuhtakuja 122","35",3);


