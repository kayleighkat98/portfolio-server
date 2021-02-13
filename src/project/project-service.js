const ProjectService ={
    getAll(db){//SELECT ALL PROJECTS
        return db('project');
    },
    orderByASC(db, req){//SELECT ALL PROJECTS IN SELECTED ORDER ASC:
        //set up error handler for ensuring req is a valid table property
        return db('project').orderBy(req);
    },
    filterTeamSize(db, req){//SELECT ALL PROJECTS THAT MATCH TEAM SIZE QUERY:
        return db('project').where('team_size', req);
    },
    filterName(db, req){//SELECT PROJECT BY NAME:
    //SELECT * FROM project WHERE name ILIKE (req);
        return db('project').where('name', 'ilike', req);
    },
    filterStack(db, req){//SELECT ALL PROJECTS WITH STACK TYPE:
    // SELECT * FROM project WHERE stack ILIKE (req);
        return db('project').where('stack', 'ilike', req);
    },
    updateText(db, req, target){//UPDATE TEXT OF PROJECT BY ID AND COLUMN NAME:
    // UPDATE project SET (column_name) = (input) WHERE id = (req);
        return db('project').update(target, req);
    },
    deleteProject(db, req){//DELETE PROJECT BY ID:
    //delete FROM project WHERE id = (req);
        return db('project').where('id', req).del();
    }
}
module.exports= ProjectService;