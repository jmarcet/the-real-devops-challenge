db.createUser({
  user: '$MONGO_USER',
  pwd: '$MONGO_PASS',
  roles: [
    {
      role: 'dbOwner',
      db: '$MONGO_INITDB_DATABASE',
    },
  ],
});
