db.createUser({
  user: 'flaskuser',
  pwd: 'flaskpass',
  roles: [
    {
      role: 'dbOwner',
      db: 'flaskdb',
    },
  ],
});
