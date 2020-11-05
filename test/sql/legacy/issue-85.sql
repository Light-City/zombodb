CREATE TABLE issue_85 (
  id serial8 NOT NULL PRIMARY KEY,
  data json
);
CREATE INDEX idxissue_85 ON issue_85 USING zombodb((issue_85.*));

INSERT INTO issue_85(data) values ('{"title": "this is the title"}');
SELECT * FROM zdb.tally('idxissue_85', 'data.title', '^.*', '', 5000, 'reverse_count');
DROP TABLE issue_85;