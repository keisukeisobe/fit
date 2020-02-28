const app = require('../src/app');
const { expect } = require('chai');
const knex = require('knex');

describe('Articles Endpoints', function() {
  let db;

  before('make knex instance', () => {
    db = knex({
      client: 'pg',
      connection: process.env.TEST_DB_URL,
    });
    app.set('db', db);
  });

  after('disconnect from db', () => db.destroy());

  before('clean the table', () => db('blogful_articles').truncate());

  afterEach('cleanup', () => db('blogful_articles').truncate());

  describe('GET endpoint', () => {
    context('given there are entries in the database', () => {

    });
  });
});