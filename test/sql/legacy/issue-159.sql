set datestyle to 'iso, mdy';
CREATE TABLE issue159 (pk_id bigint not null primary key, groupid varchar, has_att char);
CREATE INDEX idxissue159 ON issue159 USING zombodb ((issue159.*));

INSERT INTO issue159 VALUES (239558, '0000003158/3492', 'A');
INSERT INTO issue159 VALUES (239557, '0000003158/3492', 'Y');
SELECT pk_id, groupid, has_att
FROM issue159
WHERE issue159 ==> '( (#expand<groupid=<this.index>groupid>( ( pk_id = 239558) )) )'
ORDER BY pk_id;


SELECT pk_id, groupid, has_att
FROM issue159
WHERE issue159 ==> '( (#expand<groupid=<this.index>groupid>( ( pk_id = 239558) #filter(has_att = A) )) )'
ORDER BY pk_id;


SELECT pk_id, groupid, has_att
FROM issue159
WHERE issue159 ==> '( (#expand<groupid=<this.index>groupid>( ( pk_id = 239558) #filter(has_att = Y) )) )'
ORDER BY pk_id;

DROP TABLE issue159;

CREATE SCHEMA issue_159;


CREATE TABLE issue_159.data (
  pk_data bigint NOT NULL,
  data_bigint_1 bigint,
  data_bigint_expand_group bigint,
  data_bigint_array_1 bigint[],
  data_bigint_array_2 bigint[],
  data_boolean boolean,
  data_char_1 character(2),
  data_char_2 character(2),
  data_char_array_1 character(2)[],
  data_char_array_2 character(2)[],
  data_date_1 date,
  data_date_2 date,
  data_date_array_1 date[],
  data_date_array_2 date[],
  data_full_text zdb.fulltext,
  data_full_text_shingles zdb.fulltext_with_shingles,
  data_int_1 integer,
  data_int_2 integer,
  data_int_array_1 integer[],
  data_int_array_2 integer[],
  data_json json,
  data_phrase_1 zdb.phrase,
  data_phrase_2 zdb.phrase,
  data_phrase_array_1 zdb.phrase_array,
  data_phrase_array_2 zdb.phrase_array,
  data_text_1 varchar,
  data_text_filter varchar,
  data_text_array_1 varchar[],
  data_text_array_2 varchar[],
  data_timestamp timestamp without time zone,
  data_varchar_1 character varying(25),
  data_varchar_2 character varying(25),
  data_varchar_array_1 character varying(25)[],
  data_varchar_array_2 character varying(25)[]
);


CREATE TABLE issue_159.var (
  pk_var bigint NOT NULL,
  var_bigint_1 bigint,
  var_bigint_expand_group bigint,
  var_bigint_array_1 bigint[],
  var_bigint_array_2 bigint[],
  var_boolean boolean,
  var_char_1 character(2),
  var_char_2 character(2),
  var_char_array_1 character(2)[],
  var_char_array_2 character(2)[],
  var_date_1 date,
  var_date_2 date,
  var_date_array_1 date[],
  var_date_array_2 date[],
  var_int_1 integer,
  var_int_2 integer,
  var_int_array_1 integer[],
  var_int_array_2 integer[],
  var_json json,
  var_phrase_1 zdb.phrase,
  var_phrase_2 zdb.phrase,
  var_phrase_array_1 zdb.phrase_array,
  var_phrase_array_2 zdb.phrase_array,
  var_text_1 varchar,
  var_text_filter varchar,
  var_text_array_1 varchar[],
  var_text_array_2 varchar[],
  var_timestamp timestamp without time zone,
  var_varchar_1 character varying(25),
  var_varchar_2 character varying(25),
  var_varchar_array_1 character varying(25)[],
  var_varchar_array_2 character varying(25)[]
);


CREATE TABLE issue_159.vol (
  pk_vol bigint NOT NULL,
  vol_bigint_1 bigint,
  vol_bigint_expand_group bigint,
  vol_bigint_array_1 bigint[],
  vol_bigint_array_2 bigint[],
  vol_boolean boolean,
  vol_char_1 character(2),
  vol_char_2 character(2),
  vol_char_array_1 character(2)[],
  vol_char_array_2 character(2)[],
  vol_date_1 date,
  vol_date_2 date,
  vol_date_array_1 date[],
  vol_date_array_2 date[],
  vol_int_1 integer,
  vol_int_2 integer,
  vol_int_array_1 integer[],
  vol_int_array_2 integer[],
  vol_json json,
  vol_phrase_1 zdb.phrase,
  vol_phrase_2 zdb.phrase,
  vol_phrase_array_1 zdb.phrase_array,
  vol_phrase_array_2 zdb.phrase_array,
  vol_text_1 varchar,
  vol_text_filter varchar,
  vol_text_array_1 varchar[],
  vol_text_array_2 varchar[],
  vol_timestamp timestamp without time zone,
  vol_varchar_1 character varying(25),
  vol_varchar_2 character varying(25),
  vol_varchar_array_1 character varying(25)[],
  vol_varchar_array_2 character varying(25)[]
);


CREATE VIEW issue_159.consolidated_record_view AS
  SELECT data.pk_data,
    data.data_bigint_1,
    data.data_bigint_expand_group,
    data.data_bigint_array_1,
    data.data_bigint_array_2,
    data.data_boolean,
    data.data_char_1,
    data.data_char_2,
    data.data_char_array_1,
    data.data_char_array_2,
    data.data_date_1,
    data.data_date_2,
    data.data_date_array_1,
    data.data_date_array_2,
    data.data_full_text,
    data.data_full_text_shingles,
    data.data_int_1,
    data.data_int_2,
    data.data_int_array_1,
    data.data_int_array_2,
    data.data_json,
    data.data_phrase_1,
    data.data_phrase_2,
    data.data_phrase_array_1,
    data.data_phrase_array_2,
    data.data_text_1,
    data.data_text_filter,
    data.data_text_array_1,
    data.data_text_array_2,
    data.data_timestamp,
    data.data_varchar_1,
    data.data_varchar_2,
    data.data_varchar_array_1,
    data.data_varchar_array_2,
    var.var_bigint_1,
    var.var_bigint_expand_group,
    var.var_bigint_array_1,
    var.var_bigint_array_2,
    var.var_boolean,
    var.var_char_1,
    var.var_char_2,
    var.var_char_array_1,
    var.var_char_array_2,
    var.var_date_1,
    var.var_date_2,
    var.var_date_array_1,
    var.var_date_array_2,
    var.var_int_1,
    var.var_int_2,
    var.var_int_array_1,
    var.var_int_array_2,
    var.var_json,
    var.var_phrase_1,
    var.var_phrase_2,
    var.var_phrase_array_1,
    var.var_phrase_array_2,
    var.var_text_1,
    var.var_text_filter,
    var.var_text_array_1,
    var.var_text_array_2,
    var.var_timestamp,
    var.var_varchar_1,
    var.var_varchar_2,
    var.var_varchar_array_1,
    var.var_varchar_array_2,
    vol.vol_bigint_1,
    vol.vol_bigint_expand_group,
    vol.vol_bigint_array_1,
    vol.vol_bigint_array_2,
    vol.vol_boolean,
    vol.vol_char_1,
    vol.vol_char_2,
    vol.vol_char_array_1,
    vol.vol_char_array_2,
    vol.vol_date_1,
    vol.vol_date_2,
    vol.vol_date_array_1,
    vol.vol_date_array_2,
    vol.vol_int_1,
    vol.vol_int_2,
    vol.vol_int_array_1,
    vol.vol_int_array_2,
    vol.vol_json,
    vol.vol_phrase_1,
    vol.vol_phrase_2,
    vol.vol_phrase_array_1,
    vol.vol_phrase_array_2,
    vol.vol_text_1,
    vol.vol_text_filter,
    vol.vol_text_array_1,
    vol.vol_text_array_2,
    vol.vol_timestamp,
    vol.vol_varchar_1,
    vol.vol_varchar_2,
    vol.vol_varchar_array_1,
    vol.vol_varchar_array_2,
    data.ctid AS zdb
  FROM ((issue_159.data
    LEFT JOIN issue_159.var ON ((data.pk_data = var.pk_var)))
    LEFT JOIN issue_159.vol ON ((data.pk_data = vol.pk_vol)));


INSERT INTO issue_159.data (pk_data, data_bigint_1, data_bigint_expand_group, data_bigint_array_1, data_bigint_array_2, data_boolean, data_char_1, data_char_2, data_char_array_1, data_char_array_2, data_date_1, data_date_2, data_date_array_1, data_date_array_2, data_full_text, data_full_text_shingles, data_int_1, data_int_2, data_int_array_1, data_int_array_2, data_json, data_phrase_1, data_phrase_2, data_phrase_array_1, data_phrase_array_2, data_text_1, data_text_filter, data_text_array_1, data_text_array_2, data_timestamp, data_varchar_1, data_varchar_2, data_varchar_array_1, data_varchar_array_2) VALUES (1, 101, 1, '{1,101,1}', '{1,2,3,4,5}', true, 'AA', 'BB', '{AA,BB}', '{CC,DD}', '2017-01-01', '2017-01-11', '{2017-01-01,2017-01-11}', '{2017-12-24}', 'Chuck Norris once robbed a gun store with a knife.', 'Chuck Norris once robbed a gun store with a knife.', 9999, 10001, '{1,2,3}', '{1,2,3}', '[{"animal": "dogs", "food": "pizza"}]', 'all work and no play makes jack a dull boy', 'raining cats and dogs', '{"Hickory Dickory Dock","The mouse ran up the clock","The clock struck one","The mouse ran down","Hickory Dickory Dock"}', '{"A wise old owl lived in an oak","The more he saw the less he spoke","The less he spoke the more he heard","Why can''t we all be like that wise old bird"}', 'red', '1', '{alpha,bravo,charlie}', '{apples,butter,charlie}', '2017-01-01 01:43:11', 'jim', 'brown', '{milk,bread,yogurt}', '{nike,newbalance,adidas}');
INSERT INTO issue_159.data (pk_data, data_bigint_1, data_bigint_expand_group, data_bigint_array_1, data_bigint_array_2, data_boolean, data_char_1, data_char_2, data_char_array_1, data_char_array_2, data_date_1, data_date_2, data_date_array_1, data_date_array_2, data_full_text, data_full_text_shingles, data_int_1, data_int_2, data_int_array_1, data_int_array_2, data_json, data_phrase_1, data_phrase_2, data_phrase_array_1, data_phrase_array_2, data_text_1, data_text_filter, data_text_array_1, data_text_array_2, data_timestamp, data_varchar_1, data_varchar_2, data_varchar_array_1, data_varchar_array_2) VALUES (2, 102, 2, '{2,102,2}', '{1,2,3,4}', false, 'ZZ', 'XX', '{ZZ,XX}', '{CC,DD}', '2017-01-02', '2017-01-12', '{2017-01-02,2017-01-12}', '{2017-12-25}', 'Chuck Norris once heard that nothing can kill him, so he tracked down nothing and killed it.', 'Chuck Norris once heard that nothing can kill him, so he tracked down nothing and killed it.', 9998, 10002, '{4,5,6}', '{1,4,6}', '[{"animal": "cats", "food": "quiche"}]', 'worker bees can leave even drones can fly away the queen is their slave', 'a bird in the hand is worth two in the bush', '{"Old Mother Hubbard","Went to the cupboard","To get her poor doggie a bone","When she got there","The cupboard was bare","So the poor little doggie had none"}', '{"Baa baa black sheep have you any wool?","Yes sir yes sir three bags full!","One for the master one for the dame","And one for the little boy who lives down the lane."}', 'green', '2', '{whiskey,tango,foxtrot}', '{willie,tommy,freddy}', '2016-01-01 02:43:11', 'walter', 'payton', '{bananas,apples,oranges}', '{puma,asics,converse}');
INSERT INTO issue_159.data (pk_data, data_bigint_1, data_bigint_expand_group, data_bigint_array_1, data_bigint_array_2, data_boolean, data_char_1, data_char_2, data_char_array_1, data_char_array_2, data_date_1, data_date_2, data_date_array_1, data_date_array_2, data_full_text, data_full_text_shingles, data_int_1, data_int_2, data_int_array_1, data_int_array_2, data_json, data_phrase_1, data_phrase_2, data_phrase_array_1, data_phrase_array_2, data_text_1, data_text_filter, data_text_array_1, data_text_array_2, data_timestamp, data_varchar_1, data_varchar_2, data_varchar_array_1, data_varchar_array_2) VALUES (3, 103, 1, '{3,103,1}', '{1,2,3}', true, 'AA', 'BB', '{AA,BB}', '{EE,FF}', '2017-01-03', '2017-01-13', '{2017-01-03,2017-01-13}', '{2017-12-25}', 'The world did not have a tilt in its axis until Chuck Norris stubbed his toe on the North Pole.', 'The world did not have a tilt in its axis until Chuck Norris stubbed his toe on the North Pole.', 9997, 10003, '{1,2,3}', '{1,2,3}', '[{"animal": "dogs", "food": "pizza"}]', 'jack of all trades master of none', 'by hook or by crook', '{"Little Jack Horner sat in the corner","Eating his Christmas pie","He put in his thumb and pulled out a plum","And said What a good boy am I!"}', '{"Hey diddle diddle the cat and the fiddle","The cow jumped over the moon.","The little dog laughed to see such fun","And the dish ran away with the spoon!"}', 'blue', '1', '{alpha,bravo,charlie}', '{apples,butter,charlie}', '2015-01-01 03:43:11', 'peyton', 'manning', '{milk,bread,yogurt}', '{nike,newbalance,adidas}');
INSERT INTO issue_159.data (pk_data, data_bigint_1, data_bigint_expand_group, data_bigint_array_1, data_bigint_array_2, data_boolean, data_char_1, data_char_2, data_char_array_1, data_char_array_2, data_date_1, data_date_2, data_date_array_1, data_date_array_2, data_full_text, data_full_text_shingles, data_int_1, data_int_2, data_int_array_1, data_int_array_2, data_json, data_phrase_1, data_phrase_2, data_phrase_array_1, data_phrase_array_2, data_text_1, data_text_filter, data_text_array_1, data_text_array_2, data_timestamp, data_varchar_1, data_varchar_2, data_varchar_array_1, data_varchar_array_2) VALUES (4, 104, 2, '{4,104,2}', '{1,2}', false, 'ZZ', 'XX', '{ZZ,XX}', '{EE,FF}', '2017-01-04', '2017-01-14', '{2017-01-04,2017-01-14}', NULL, 'Chuck Norris makes fire by rubbing 2 ice cubes together.', 'Chuck Norris makes fire by rubbing 2 ice cubes together.', 9996, 10004, '{4,5,6}', '{1,4,6}', '[{"animal": "cats", "food": "quiche"}]', 'big bee chase me', 'sleep tight', '{"Little Miss Muffet sat on a tuffet","Eating her curds and whey","Along came a spider","Who sat down beside her","And frightened Miss Muffet away"}', '{"Itsy Bitsy spider climbing up the spout","Down came the rain and washed the spider out","Out came the sun and dried up all the rain","Now Itsy Bitsy spider went up the spout again!"}', 'blue', '2', '{whiskey,tango,foxtrot}', '{willie,tommy,freddy}', '2017-01-23 09:43:11', 'joe', 'montana', '{bananas,apples,oranges}', '{puma,asics,converse}');
INSERT INTO issue_159.data (pk_data, data_bigint_1, data_bigint_expand_group, data_bigint_array_1, data_bigint_array_2, data_boolean, data_char_1, data_char_2, data_char_array_1, data_char_array_2, data_date_1, data_date_2, data_date_array_1, data_date_array_2, data_full_text, data_full_text_shingles, data_int_1, data_int_2, data_int_array_1, data_int_array_2, data_json, data_phrase_1, data_phrase_2, data_phrase_array_1, data_phrase_array_2, data_text_1, data_text_filter, data_text_array_1, data_text_array_2, data_timestamp, data_varchar_1, data_varchar_2, data_varchar_array_1, data_varchar_array_2) VALUES (5, 105, 1, '{5,105,1}', '{1}', true, 'AA', 'BB', '{AA,BB}', '{EE,FF}', '2017-01-05', '2017-01-15', '{2017-01-05,2017-01-15}', '{2017-12-24}', 'Chuck Norris abducts aliens.', 'Chuck Norris abducts aliens.', 9995, 10005, '{1,2,3}', '{1,2,3}', '[{"animal": "dogs", "food": "quiche"}]', 'you don''t know jack', 'bob''s your uncle', '{"Ring around the rosy","A pocketful of posies","Ashes Ashes","We all fall down"}', '{"Pat a cake Pat a cake baker''s man","Bake me a cake as fast as you can","Pat it and prick it and mark it with a B","And put it in the oven for Baby and me."}', 'red', '2', '{alpha,bravo,charlie}', '{apples,butter,charlie}', '2015-12-25 00:43:11', 'jerry', 'rice', '{milk,bread,yogurt}', '{nike,newbalance,adidas}');
INSERT INTO issue_159.data (pk_data, data_bigint_1, data_bigint_expand_group, data_bigint_array_1, data_bigint_array_2, data_boolean, data_char_1, data_char_2, data_char_array_1, data_char_array_2, data_date_1, data_date_2, data_date_array_1, data_date_array_2, data_full_text, data_full_text_shingles, data_int_1, data_int_2, data_int_array_1, data_int_array_2, data_json, data_phrase_1, data_phrase_2, data_phrase_array_1, data_phrase_array_2, data_text_1, data_text_filter, data_text_array_1, data_text_array_2, data_timestamp, data_varchar_1, data_varchar_2, data_varchar_array_1, data_varchar_array_2) VALUES (6, 106, 3, '{6,106,3}', '{1,2}', true, 'ZZ', 'BX', '{AA,BB}', '{EE,FF}', '2017-01-06', '2017-01-16', '{2017-01-16}', '{2017-12-25}', 'While other children were playing in sand, Chuck was playing in concrete.', 'While other children were playing in sand, Chuck was playing in concrete.', 9994, 10006, '{1,4,6}', '{4,5}', '[{"animal": "cats", "food": "pizza"}]', 'i need a 2 ton jack for my 1970 dodge super bee master cyclinder replacement', 'as easy as pie', '{"Hush a bye baby on the tree top","When the wind blows the cradle will rock","When the bow breaks the cradle will fall","And down will come baby cradle and all"}', '{"Peter Peter pumpkin eater","Had a wife and couldn''t keep her!","He put her in a pumpkin shell","And there he kept her very well!"}', 'red', '1', '{whiskey,tango,foxtrot}', '{willie,tommy,freddy}', '2016-12-25 23:43:11', 'fred', 'biletnikoff', '{bananas,yogurt,oranges}', '{puma,nike,converse}');
INSERT INTO issue_159.data (pk_data, data_bigint_1, data_bigint_expand_group, data_bigint_array_1, data_bigint_array_2, data_boolean, data_char_1, data_char_2, data_char_array_1, data_char_array_2, data_date_1, data_date_2, data_date_array_1, data_date_array_2, data_full_text, data_full_text_shingles, data_int_1, data_int_2, data_int_array_1, data_int_array_2, data_json, data_phrase_1, data_phrase_2, data_phrase_array_1, data_phrase_array_2, data_text_1, data_text_filter, data_text_array_1, data_text_array_2, data_timestamp, data_varchar_1, data_varchar_2, data_varchar_array_1, data_varchar_array_2) VALUES (7, NULL, NULL, '{}', '{}', NULL, NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, NULL, NULL, '{}', '{}', NULL, NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.data (pk_data, data_bigint_1, data_bigint_expand_group, data_bigint_array_1, data_bigint_array_2, data_boolean, data_char_1, data_char_2, data_char_array_1, data_char_array_2, data_date_1, data_date_2, data_date_array_1, data_date_array_2, data_full_text, data_full_text_shingles, data_int_1, data_int_2, data_int_array_1, data_int_array_2, data_json, data_phrase_1, data_phrase_2, data_phrase_array_1, data_phrase_array_2, data_text_1, data_text_filter, data_text_array_1, data_text_array_2, data_timestamp, data_varchar_1, data_varchar_2, data_varchar_array_1, data_varchar_array_2) VALUES (8, 108, 3, '{8,108,3}', '{1}', false, 'ZZ', 'BB', '{AA,BB}', '{CC,DD}', '2017-01-08', '2017-01-18', '{2017-01-08,2017-01-18}', '{2017-12-24}', 'There once was a street called Chuck Norris, but the name was changed for public safety because nobody crosses Chuck Norris and lives.', 'There once was a street called Chuck Norris, but the name was changed for public safety because nobody crosses Chuck Norris and lives.', 9993, 10008, '{4,5,6}', '{1,2,3}', '[{"animal": "cats", "food": "quiche"}]', 'I never played jacks as a kid', 'the birds and the bees', '{"Rain rain go away","Come again another day","Little Johnny wants to play","Rain rain go to Spain","Never show your face again!"}', '{"Red sky at night","Sailor''s delight","Red sky at morning","Sailor''s warning"}', 'green', '3', '{alpha,bravo,charlie}', '{apples,butter,charlie}', '2014-01-01 02:43:11', 'joe', 'greene', '{bananas,apples,oranges}', '{puma,asics,converse}');
INSERT INTO issue_159.data (pk_data, data_bigint_1, data_bigint_expand_group, data_bigint_array_1, data_bigint_array_2, data_boolean, data_char_1, data_char_2, data_char_array_1, data_char_array_2, data_date_1, data_date_2, data_date_array_1, data_date_array_2, data_full_text, data_full_text_shingles, data_int_1, data_int_2, data_int_array_1, data_int_array_2, data_json, data_phrase_1, data_phrase_2, data_phrase_array_1, data_phrase_array_2, data_text_1, data_text_filter, data_text_array_1, data_text_array_2, data_timestamp, data_varchar_1, data_varchar_2, data_varchar_array_1, data_varchar_array_2) VALUES (9, 109, 2, '{9,109,2}', '{1,2,3}', false, 'AA', 'XX', '{ZZ,XX}', '{EE,FF}', '2017-01-09', '2017-01-19', '{2017-01-09,2017-01-19}', '{2017-12-25}', 'Chuck Norris threw a grenade and killed 50 people then it exploded.', 'Chuck Norris threw a grenade and killed 50 people then it exploded.', 9992, 10009, '{1,2,3}', '{1,4,6}', '[{"animal": "dogs", "food": "quiche"}]', 'bees can smell fear', 'break a leg', '{"Star Light Star bright","The first star I see tonight","I wish I may I wish I might","Have the wish I wish tonight"}', '{"The North wind doth blow and we shall have snow","And what will poor robin do then poor thing?","He''ll sit in a barn and keep himself warm","and hide his head under his wing poor thing"}', 'blue', '3', '{whiskey,tango,foxtrot}', '{willie,tommy,freddy}', '2011-01-01 03:43:11', 'kevin', 'greene', '{milk,bread,yogurt}', '{nike,newbalance,adidas}');
INSERT INTO issue_159.data (pk_data, data_bigint_1, data_bigint_expand_group, data_bigint_array_1, data_bigint_array_2, data_boolean, data_char_1, data_char_2, data_char_array_1, data_char_array_2, data_date_1, data_date_2, data_date_array_1, data_date_array_2, data_full_text, data_full_text_shingles, data_int_1, data_int_2, data_int_array_1, data_int_array_2, data_json, data_phrase_1, data_phrase_2, data_phrase_array_1, data_phrase_array_2, data_text_1, data_text_filter, data_text_array_1, data_text_array_2, data_timestamp, data_varchar_1, data_varchar_2, data_varchar_array_1, data_varchar_array_2) VALUES (10, 110, 1, '{10,110,1}', '{1,2,3,4,5}', true, 'ZZ', 'BB', '{ZZ,XX}', '{CC,DD}', '2017-01-10', '2017-01-20', '{2017-01-10}', '{2017-12-25}', 'In space Chuck Norris can hear you scream.', 'In space Chuck Norris can hear you scream.', 9991, 10010, '{1,4,6}', '{1,2,3}', '[{"animal": "cats", "food": "pizza"}]', 'SNL had killer bees', 'catch 22', '{"The lion and the unicorn were fighting for the crown","The lion beat the unicorn all around the town","Some gave them white bread and some gave them brown","Some gave them plum cake and drummed them out of town"}', '{"The Queen of Hearts she made some tarts all on a summer''s day","The Knave of Hearts he stole the tarts and took them clean away","The King of Hearts called for the tarts and beat the Knave full sore","The Knave of Hearts brought back the tarts and vowed he''d steal no more."}', 'red', '2', '{whiskey,tango,foxtrot}', '{apples,butter,charlie}', '1988-01-01 03:43:11', 'terry', 'bradshaw', '{bananas,yogurt,oranges}', '{puma,nike,converse}');


INSERT INTO issue_159.var (pk_var, var_bigint_1, var_bigint_expand_group, var_bigint_array_1, var_bigint_array_2, var_boolean, var_char_1, var_char_2, var_char_array_1, var_char_array_2, var_date_1, var_date_2, var_date_array_1, var_date_array_2, var_int_1, var_int_2, var_int_array_1, var_int_array_2, var_json, var_phrase_1, var_phrase_2, var_phrase_array_1, var_phrase_array_2, var_text_1, var_text_filter, var_text_array_1, var_text_array_2, var_timestamp, var_varchar_1, var_varchar_2, var_varchar_array_1, var_varchar_array_2) VALUES (1, NULL, 5, '{}', '{}', true, 'NC', 'TX', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "frogs", "food": "apples"}]', NULL, NULL, '{}', '{}', 'orange', 'A', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.var (pk_var, var_bigint_1, var_bigint_expand_group, var_bigint_array_1, var_bigint_array_2, var_boolean, var_char_1, var_char_2, var_char_array_1, var_char_array_2, var_date_1, var_date_2, var_date_array_1, var_date_array_2, var_int_1, var_int_2, var_int_array_1, var_int_array_2, var_json, var_phrase_1, var_phrase_2, var_phrase_array_1, var_phrase_array_2, var_text_1, var_text_filter, var_text_array_1, var_text_array_2, var_timestamp, var_varchar_1, var_varchar_2, var_varchar_array_1, var_varchar_array_2) VALUES (2, NULL, 6, '{}', '{}', false, 'SC', 'TN', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "bats", "food": "hummus"}]', NULL, NULL, '{}', '{}', 'yellow', 'B', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.var (pk_var, var_bigint_1, var_bigint_expand_group, var_bigint_array_1, var_bigint_array_2, var_boolean, var_char_1, var_char_2, var_char_array_1, var_char_array_2, var_date_1, var_date_2, var_date_array_1, var_date_array_2, var_int_1, var_int_2, var_int_array_1, var_int_array_2, var_json, var_phrase_1, var_phrase_2, var_phrase_array_1, var_phrase_array_2, var_text_1, var_text_filter, var_text_array_1, var_text_array_2, var_timestamp, var_varchar_1, var_varchar_2, var_varchar_array_1, var_varchar_array_2) VALUES (3, NULL, 5, '{}', '{}', true, 'VA', 'OK', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "frogs", "food": "apples"}]', NULL, NULL, '{}', '{}', 'purple', 'C', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.var (pk_var, var_bigint_1, var_bigint_expand_group, var_bigint_array_1, var_bigint_array_2, var_boolean, var_char_1, var_char_2, var_char_array_1, var_char_array_2, var_date_1, var_date_2, var_date_array_1, var_date_array_2, var_int_1, var_int_2, var_int_array_1, var_int_array_2, var_json, var_phrase_1, var_phrase_2, var_phrase_array_1, var_phrase_array_2, var_text_1, var_text_filter, var_text_array_1, var_text_array_2, var_timestamp, var_varchar_1, var_varchar_2, var_varchar_array_1, var_varchar_array_2) VALUES (4, NULL, 6, '{}', '{}', false, 'NC', 'TX', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "bats", "food": "hummus"}]', NULL, NULL, '{}', '{}', 'orange', 'A', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.var (pk_var, var_bigint_1, var_bigint_expand_group, var_bigint_array_1, var_bigint_array_2, var_boolean, var_char_1, var_char_2, var_char_array_1, var_char_array_2, var_date_1, var_date_2, var_date_array_1, var_date_array_2, var_int_1, var_int_2, var_int_array_1, var_int_array_2, var_json, var_phrase_1, var_phrase_2, var_phrase_array_1, var_phrase_array_2, var_text_1, var_text_filter, var_text_array_1, var_text_array_2, var_timestamp, var_varchar_1, var_varchar_2, var_varchar_array_1, var_varchar_array_2) VALUES (5, NULL, 7, '{}', '{}', true, 'SC', 'TN', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "frogs", "food": "apples"}]', NULL, NULL, '{}', '{}', 'yellow', 'B', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.var (pk_var, var_bigint_1, var_bigint_expand_group, var_bigint_array_1, var_bigint_array_2, var_boolean, var_char_1, var_char_2, var_char_array_1, var_char_array_2, var_date_1, var_date_2, var_date_array_1, var_date_array_2, var_int_1, var_int_2, var_int_array_1, var_int_array_2, var_json, var_phrase_1, var_phrase_2, var_phrase_array_1, var_phrase_array_2, var_text_1, var_text_filter, var_text_array_1, var_text_array_2, var_timestamp, var_varchar_1, var_varchar_2, var_varchar_array_1, var_varchar_array_2) VALUES (6, NULL, 5, '{}', '{}', false, 'VA', 'OK', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "bats", "food": "hummus"}]', NULL, NULL, '{}', '{}', 'purple', 'C', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.var (pk_var, var_bigint_1, var_bigint_expand_group, var_bigint_array_1, var_bigint_array_2, var_boolean, var_char_1, var_char_2, var_char_array_1, var_char_array_2, var_date_1, var_date_2, var_date_array_1, var_date_array_2, var_int_1, var_int_2, var_int_array_1, var_int_array_2, var_json, var_phrase_1, var_phrase_2, var_phrase_array_1, var_phrase_array_2, var_text_1, var_text_filter, var_text_array_1, var_text_array_2, var_timestamp, var_varchar_1, var_varchar_2, var_varchar_array_1, var_varchar_array_2) VALUES (7, NULL, NULL, '{}', '{}', NULL, NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.var (pk_var, var_bigint_1, var_bigint_expand_group, var_bigint_array_1, var_bigint_array_2, var_boolean, var_char_1, var_char_2, var_char_array_1, var_char_array_2, var_date_1, var_date_2, var_date_array_1, var_date_array_2, var_int_1, var_int_2, var_int_array_1, var_int_array_2, var_json, var_phrase_1, var_phrase_2, var_phrase_array_1, var_phrase_array_2, var_text_1, var_text_filter, var_text_array_1, var_text_array_2, var_timestamp, var_varchar_1, var_varchar_2, var_varchar_array_1, var_varchar_array_2) VALUES (8, NULL, 6, '{}', '{}', false, 'NC', 'TN', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "bats", "food": "hummus"}]', NULL, NULL, '{}', '{}', 'orange', 'A', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.var (pk_var, var_bigint_1, var_bigint_expand_group, var_bigint_array_1, var_bigint_array_2, var_boolean, var_char_1, var_char_2, var_char_array_1, var_char_array_2, var_date_1, var_date_2, var_date_array_1, var_date_array_2, var_int_1, var_int_2, var_int_array_1, var_int_array_2, var_json, var_phrase_1, var_phrase_2, var_phrase_array_1, var_phrase_array_2, var_text_1, var_text_filter, var_text_array_1, var_text_array_2, var_timestamp, var_varchar_1, var_varchar_2, var_varchar_array_1, var_varchar_array_2) VALUES (9, NULL, 7, '{}', '{}', true, 'VA', 'TN', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "frogs", "food": "apples"}]', NULL, NULL, '{}', '{}', 'yellow', 'C', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.var (pk_var, var_bigint_1, var_bigint_expand_group, var_bigint_array_1, var_bigint_array_2, var_boolean, var_char_1, var_char_2, var_char_array_1, var_char_array_2, var_date_1, var_date_2, var_date_array_1, var_date_array_2, var_int_1, var_int_2, var_int_array_1, var_int_array_2, var_json, var_phrase_1, var_phrase_2, var_phrase_array_1, var_phrase_array_2, var_text_1, var_text_filter, var_text_array_1, var_text_array_2, var_timestamp, var_varchar_1, var_varchar_2, var_varchar_array_1, var_varchar_array_2) VALUES (10, NULL, 5, '{}', '{}', true, 'VA', 'TX', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "bats", "food": "hummus"}]', NULL, NULL, '{}', '{}', 'purple', 'B', '{}', '{}', NULL, NULL, NULL, '{}', '{}');


INSERT INTO issue_159.vol (pk_vol, vol_bigint_1, vol_bigint_expand_group, vol_bigint_array_1, vol_bigint_array_2, vol_boolean, vol_char_1, vol_char_2, vol_char_array_1, vol_char_array_2, vol_date_1, vol_date_2, vol_date_array_1, vol_date_array_2, vol_int_1, vol_int_2, vol_int_array_1, vol_int_array_2, vol_json, vol_phrase_1, vol_phrase_2, vol_phrase_array_1, vol_phrase_array_2, vol_text_1, vol_text_filter, vol_text_array_1, vol_text_array_2, vol_timestamp, vol_varchar_1, vol_varchar_2, vol_varchar_array_1, vol_varchar_array_2) VALUES (1, NULL, 8, '{}', '{}', false, 'XY', 'AB', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "snakes", "food": "beer"}]', NULL, NULL, '{}', '{}', 'pink', '1A', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.vol (pk_vol, vol_bigint_1, vol_bigint_expand_group, vol_bigint_array_1, vol_bigint_array_2, vol_boolean, vol_char_1, vol_char_2, vol_char_array_1, vol_char_array_2, vol_date_1, vol_date_2, vol_date_array_1, vol_date_array_2, vol_int_1, vol_int_2, vol_int_array_1, vol_int_array_2, vol_json, vol_phrase_1, vol_phrase_2, vol_phrase_array_1, vol_phrase_array_2, vol_text_1, vol_text_filter, vol_text_array_1, vol_text_array_2, vol_timestamp, vol_varchar_1, vol_varchar_2, vol_varchar_array_1, vol_varchar_array_2) VALUES (2, NULL, 9, '{}', '{}', true, 'XX', 'BA', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "nats", "food": "guacamole"}]', NULL, NULL, '{}', '{}', 'brown', '2B', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.vol (pk_vol, vol_bigint_1, vol_bigint_expand_group, vol_bigint_array_1, vol_bigint_array_2, vol_boolean, vol_char_1, vol_char_2, vol_char_array_1, vol_char_array_2, vol_date_1, vol_date_2, vol_date_array_1, vol_date_array_2, vol_int_1, vol_int_2, vol_int_array_1, vol_int_array_2, vol_json, vol_phrase_1, vol_phrase_2, vol_phrase_array_1, vol_phrase_array_2, vol_text_1, vol_text_filter, vol_text_array_1, vol_text_array_2, vol_timestamp, vol_varchar_1, vol_varchar_2, vol_varchar_array_1, vol_varchar_array_2) VALUES (3, NULL, 8, '{}', '{}', true, 'XY', 'AA', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "nats", "food": "guacamole"}]', NULL, NULL, '{}', '{}', 'indigo', '3C', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.vol (pk_vol, vol_bigint_1, vol_bigint_expand_group, vol_bigint_array_1, vol_bigint_array_2, vol_boolean, vol_char_1, vol_char_2, vol_char_array_1, vol_char_array_2, vol_date_1, vol_date_2, vol_date_array_1, vol_date_array_2, vol_int_1, vol_int_2, vol_int_array_1, vol_int_array_2, vol_json, vol_phrase_1, vol_phrase_2, vol_phrase_array_1, vol_phrase_array_2, vol_text_1, vol_text_filter, vol_text_array_1, vol_text_array_2, vol_timestamp, vol_varchar_1, vol_varchar_2, vol_varchar_array_1, vol_varchar_array_2) VALUES (4, NULL, 9, '{}', '{}', false, 'XX', 'BB', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "snakes", "food": "beer"}]', NULL, NULL, '{}', '{}', 'brown', '1A', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.vol (pk_vol, vol_bigint_1, vol_bigint_expand_group, vol_bigint_array_1, vol_bigint_array_2, vol_boolean, vol_char_1, vol_char_2, vol_char_array_1, vol_char_array_2, vol_date_1, vol_date_2, vol_date_array_1, vol_date_array_2, vol_int_1, vol_int_2, vol_int_array_1, vol_int_array_2, vol_json, vol_phrase_1, vol_phrase_2, vol_phrase_array_1, vol_phrase_array_2, vol_text_1, vol_text_filter, vol_text_array_1, vol_text_array_2, vol_timestamp, vol_varchar_1, vol_varchar_2, vol_varchar_array_1, vol_varchar_array_2) VALUES (5, NULL, 9, '{}', '{}', true, 'XY', 'AA', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "snakes", "food": "beer"}]', NULL, NULL, '{}', '{}', 'indigo', '2B', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.vol (pk_vol, vol_bigint_1, vol_bigint_expand_group, vol_bigint_array_1, vol_bigint_array_2, vol_boolean, vol_char_1, vol_char_2, vol_char_array_1, vol_char_array_2, vol_date_1, vol_date_2, vol_date_array_1, vol_date_array_2, vol_int_1, vol_int_2, vol_int_array_1, vol_int_array_2, vol_json, vol_phrase_1, vol_phrase_2, vol_phrase_array_1, vol_phrase_array_2, vol_text_1, vol_text_filter, vol_text_array_1, vol_text_array_2, vol_timestamp, vol_varchar_1, vol_varchar_2, vol_varchar_array_1, vol_varchar_array_2) VALUES (6, NULL, 9, '{}', '{}', true, 'XX', 'AB', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "nats", "food": "guacamole"}]', NULL, NULL, '{}', '{}', 'pink', '3C', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.vol (pk_vol, vol_bigint_1, vol_bigint_expand_group, vol_bigint_array_1, vol_bigint_array_2, vol_boolean, vol_char_1, vol_char_2, vol_char_array_1, vol_char_array_2, vol_date_1, vol_date_2, vol_date_array_1, vol_date_array_2, vol_int_1, vol_int_2, vol_int_array_1, vol_int_array_2, vol_json, vol_phrase_1, vol_phrase_2, vol_phrase_array_1, vol_phrase_array_2, vol_text_1, vol_text_filter, vol_text_array_1, vol_text_array_2, vol_timestamp, vol_varchar_1, vol_varchar_2, vol_varchar_array_1, vol_varchar_array_2) VALUES (7, NULL, NULL, '{}', '{}', NULL, NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.vol (pk_vol, vol_bigint_1, vol_bigint_expand_group, vol_bigint_array_1, vol_bigint_array_2, vol_boolean, vol_char_1, vol_char_2, vol_char_array_1, vol_char_array_2, vol_date_1, vol_date_2, vol_date_array_1, vol_date_array_2, vol_int_1, vol_int_2, vol_int_array_1, vol_int_array_2, vol_json, vol_phrase_1, vol_phrase_2, vol_phrase_array_1, vol_phrase_array_2, vol_text_1, vol_text_filter, vol_text_array_1, vol_text_array_2, vol_timestamp, vol_varchar_1, vol_varchar_2, vol_varchar_array_1, vol_varchar_array_2) VALUES (8, NULL, 8, '{}', '{}', false, 'YY', 'BA', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "nats", "food": "guacamole"}]', NULL, NULL, '{}', '{}', 'pink', '1A', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.vol (pk_vol, vol_bigint_1, vol_bigint_expand_group, vol_bigint_array_1, vol_bigint_array_2, vol_boolean, vol_char_1, vol_char_2, vol_char_array_1, vol_char_array_2, vol_date_1, vol_date_2, vol_date_array_1, vol_date_array_2, vol_int_1, vol_int_2, vol_int_array_1, vol_int_array_2, vol_json, vol_phrase_1, vol_phrase_2, vol_phrase_array_1, vol_phrase_array_2, vol_text_1, vol_text_filter, vol_text_array_1, vol_text_array_2, vol_timestamp, vol_varchar_1, vol_varchar_2, vol_varchar_array_1, vol_varchar_array_2) VALUES (9, NULL, 8, '{}', '{}', true, 'YY', 'AB', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "snakes", "food": "beer"}]', NULL, NULL, '{}', '{}', 'indigo', '2B', '{}', '{}', NULL, NULL, NULL, '{}', '{}');
INSERT INTO issue_159.vol (pk_vol, vol_bigint_1, vol_bigint_expand_group, vol_bigint_array_1, vol_bigint_array_2, vol_boolean, vol_char_1, vol_char_2, vol_char_array_1, vol_char_array_2, vol_date_1, vol_date_2, vol_date_array_1, vol_date_array_2, vol_int_1, vol_int_2, vol_int_array_1, vol_int_array_2, vol_json, vol_phrase_1, vol_phrase_2, vol_phrase_array_1, vol_phrase_array_2, vol_text_1, vol_text_filter, vol_text_array_1, vol_text_array_2, vol_timestamp, vol_varchar_1, vol_varchar_2, vol_varchar_array_1, vol_varchar_array_2) VALUES (10, NULL, 9, '{}', '{}', true, 'XX', 'BB', '{}', '{}', NULL, NULL, '{}', '{}', NULL, NULL, '{}', '{}', '[{"animal": "nats", "food": "guacamole"}]', NULL, NULL, '{}', '{}', 'indigo', '3C', '{}', '{}', NULL, NULL, NULL, '{}', '{}');

ALTER TABLE ONLY issue_159.data
  ADD CONSTRAINT idx_issue_159_data_pkey PRIMARY KEY (pk_data);


ALTER TABLE ONLY issue_159.var
  ADD CONSTRAINT idx_issue_159_var_pkey PRIMARY KEY (pk_var);


ALTER TABLE ONLY issue_159.vol
  ADD CONSTRAINT idx_issue_159_vol_pkey PRIMARY KEY (pk_vol);

CREATE INDEX es_issue_159_data ON issue_159.data USING zombodb ((data.*)) WITH (options='pk_data = <issue_159.var.es_issue_159_var>pk_var,pk_data = <issue_159.vol.es_issue_159_vol>pk_vol', shards='3', replicas='1');
CREATE INDEX es_issue_159_var ON issue_159.var USING zombodb ((var.*)) WITH (shards='3', replicas='1');
CREATE INDEX es_issue_159_vol ON issue_159.vol USING zombodb ((vol.*)) WITH (shards='3', replicas='1');


--correctly returns 1, 2, 3, 5, 9, 10
SELECT pk_data FROM issue_159.consolidated_record_view where zdb==>'( (#expand<data_bigint_expand_group=<this.index>data_bigint_expand_group>( ( var_text_1 = "yellow") #filter(data_boolean:true)) ) )' ORDER BY pk_data;

--correctly return 2, 4, 5, 9
SELECT pk_data FROM issue_159.consolidated_record_view where zdb==>'( (#expand<data_bigint_expand_group=<this.index>data_bigint_expand_group>( ( var_text_1 = "yellow") #filter(data_boolean:false)) ) )' ORDER BY pk_data;

--this is where the #expand field and #filter field are from different tables
--correctly returns 2, 5, 9 (but I think it got lucky)
SELECT pk_data FROM issue_159.consolidated_record_view where zdb==>'( (#expand<var_bigint_expand_group=<this.index>var_bigint_expand_group>( ( var_text_1 = "yellow") #filter(data_boolean:true)) ) )' ORDER BY pk_data;

--should return 2, 4, 5, 8, 9 but returns 2, 5, 9
SELECT pk_data FROM issue_159.consolidated_record_view where zdb==>'( (#expand<var_bigint_expand_group=<this.index>var_bigint_expand_group>( ( var_text_1 = "yellow") #filter(data_boolean:false)) ) )' ORDER BY pk_data;

--should return 1, 2, 3, 5, 6, 9, 10 but returns 2, 5, 9
SELECT pk_data FROM issue_159.consolidated_record_view where zdb==>'( (#expand<vol_bigint_expand_group=<this.index>vol_bigint_expand_group>( ( var_text_1 = "yellow") #filter(data_boolean:true)) ) )' ORDER BY pk_data;

--#expand and #filter fields from same table
--correctly returns 2, 4, 5, 8, 9
SELECT pk_data FROM issue_159.consolidated_record_view where zdb==>'( (#expand<var_bigint_expand_group=<this.index>var_bigint_expand_group>( ( var_text_1 = "yellow") #filter(var_boolean:false)) ) )' ORDER BY pk_data;

-- a test against issue #272, make sure highlighting works
select * from zdb_highlight('issue_159.consolidated_record_view', 'vol_json.animal:snakes with vol_json.food:beer', 'pk_data IN (1,4,5,9)', '{}'::text[]) order by "primaryKey", "fieldName", "arrayIndex", term, position, "startOffset", "endOffset";

DROP SCHEMA issue_159 CASCADE;