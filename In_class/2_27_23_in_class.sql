USE JOINS;

SELECT members.members_id, members.name "Member", committies.committee_id, 	
	committies.name "Committee"
FROM members RIGHT JOIN committies USING(name) 
WHERE members.member_id IS NULL;

SELECT m.member_id, m.name "Member", c.commitiee_id, c.name "Comittiee"
FROM members m CROSS JOIN committiees c;

SELECT * FROM useres JOIN userprofile
USING(auid);

SELECT * FROM useres RIGHT JOIN userprofile
USING(auid);

SELECT * FROM useres CROSS JOIN userprofile;