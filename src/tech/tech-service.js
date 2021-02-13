const TechService ={

	getAll(db){//SELECT ALL TECH:
	//SELECT * FROM tech;
		return db('tech');
	},
	orderByASC(db, req){//SELECT ALL TECH IN SELECTED ORDER:
	//SELECT * FROM tech ORDER BY label ASC;
		return db('tech').orderBy(req);
	}
}

/*

FIND ALL TECH USED BY A PROJECT:
SELECT label FROM tech WHERE (req) = ANY (project_id)

~~~~~~~~

FIND ALL PROJECT IDS USED BY A TECH:
SELECT project_id FROM tech WHERE 'CHAI' ILIKE (label)

~~~~~~~~

FIND ALL TECH OF A SPECIFIED STACK IN ALPHABETICAL ORDER:
SELECT * FROM tech WHERE (query) ILIKE (stack) ORDER BY label ASC;

~~~~~~~~
ADD A NEW TECH WITH NEW PROJECT:
INSERT INTO "tech" (label, stack, project_id )
VALUES (
	'BcryptsJS',
	'back',
	ARRAY[project_id]
);

~~~~~~~~

ADD PROJECT TO EXISTING TECH:
UPDATE "tech" 
	SET project_id = ARRAY_APPEND(project_id, 4) 
    WHERE id = 1
;

~~~~~~~~~
*/
