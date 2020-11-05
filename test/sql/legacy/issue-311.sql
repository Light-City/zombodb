CREATE TABLE issue311 (
  id serial8 not null primary key,
  data json
);

SELECT zdb.define_field_mapping('issue311', 'data', '{
            "type" : "nested",
            "properties" : {
              "offset" : {
                "type" : "long"
              },
              "subjects" : {
                "type" : "keyword",
                "ignore_above" : 10921
              },
              "tags" : {
                "type" : "keyword",
                "ignore_above" : 10921
              },
              "terms" : {
                "type" : "keyword",
                "ignore_above" : 10921
              },
              "text" : {
                "type" : "text",
                "analyzer" : "fulltext"
              },
              "zdb_always_exists" : {
                "type" : "boolean",
                "null_value" : true
              }
            }
          }');
CREATE INDEX idxissue311 ON issue311 USING zombodb ( (issue311.*) );
INSERT INTO issue311 (data) VALUES ('[{"tags":["a", "b"], "text":"this is a test"}]');

SELECT id FROM issue311 WHERE issue311 ==> 'data.text:a WITH data.text:"a test"';

DROP TABLE issue311 CASCADE ;