SELECT * FROM user /* haetaan kentät taulusta. * = kaikki */;

/* haetaan taulusta user vain username kentän */
SELECT username FROM user;

/* haetaan taulusta user kentätä username ja pass */
SELECT username,pass FROM user;

/* hakee käyttäjätunnuksella "kalle olevat tiedotr taulusta user" */
SELECT * FROM user WHERE username="kalle";

SELECT * FROM user WHERE username="kalle" AND pass="test123" ORDER BY username;

SELECT * FROM friend; /* Tulostetaan friend taulu. Eka ajettu dummy data friends_insert:issä */

/* INNER JOIN = yhdistetään kahden taulut tiedot yhteen. Täysi relaatio */
SELECT user.username,friend.friend_name,friend.friend_address,friend.friend_age FROM
user INNER JOIN friend ON user.user_id=friend.user_id WHERE user.username="kalle";

/* Call procedure. This will get all users from user table */
CALL getAllUsers();

CALL getLoginInfo("timppa","test123");

CALL getFriendsByUsername("timppa");
CALL getFriendsByUsername("kalle");

CALL getUserFriendsByName("timppa");
CALL getUserFriendsById(3); 

