-- Users
DROP TABLE IF EXISTS users_copy;
SELECT users.userid, users.uid, users.username
INTO users_copy FROM users
WHERE users.username LIKE '%DELETE%';

DELETE FROM programtempowner
    USING users_copy
    WHERE programtempowner.userid = users_copy.userid;

DELETE FROM userrolemembers
    USING users_copy
    WHERE userrolemembers.userid = users_copy.userid;

DELETE FROM users_catdimensionconstraints
    USING users_copy
    WHERE users_catdimensionconstraints.userid = users_copy.userid;

DELETE FROM users_cogsdimensionconstraints
    USING users_copy
    WHERE users_cogsdimensionconstraints.userid = users_copy.userid;

DELETE FROM previouspasswords
    USING users_copy
    WHERE previouspasswords.userid = users_copy.userid;

DELETE FROM potentialduplicate
    USING users_copy
    WHERE potentialduplicate.lastupdatedby = users_copy.userid;

DELETE FROM users
    USING users_copy
    WHERE users.userid = users_copy.userid;

-- DROP TABLE IF EXISTS users_copy;
