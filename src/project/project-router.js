const express = require('express')
const ProjectService = require('./project-service')
const projectRouter = express.Router();
projectRouter.route('/').get((req, res, next) => {
    const knexInstance = req.app.get('db');
    ProjectService.getAll(knexInstance)
        .then( projects => {
            res.json(projects)
        })
        .catch(next);
    })
;
module.exports= projectRouter;