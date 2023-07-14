CREATE (:User {name: 'Jon', age: 39})
CREATE (:Movie {title: 'Inception', genre: 'Thriller'})
MATCH (u:User {name: 'Jon'}), (m:Movie {title: 'Inception'})
CREATE (u)-[:HAS_SEEN]->(m)



CREATE (:User {name: 'Alice', age: 30})
CREATE (:User {name: 'Bob', age: 28})
CREATE (:Movie {title: 'The Shawshank Redemption', genre: 'Drama'})
CREATE (:Movie {title: 'Pulp Fiction', genre: 'Crime'})

MATCH (u:User {name: 'Jon'}), (m:Movie {title: 'The Shawshank Redemption'})
CREATE (u)-[:HAS_SEEN]->(m)
MATCH (u:User {name: 'Jon'}), (m:Movie {title: 'Pulp Fiction'})
CREATE (u)-[:HAS_SEEN]->(m)
MATCH (u:User {name: 'Alice'}), (m:Movie {title: 'The Shawshank Redemption'})
CREATE (u)-[:HAS_SEEN]->(m)
MATCH (u:User {name: 'Bob'}), (m:Movie {title: 'Pulp Fiction'})
CREATE (u)-[:HAS_SEEN]->(m)



CREATE (:User {name: 'kEnAi', age: 10})

MATCH (u:User {name: 'kEnAi'})
RETURN u

MATCH (u:User {name: 'kEnAi'})
SET u.age = 11

MATCH (u:User {name: 'kEnAi'})
DETACH DELETE u


CREATE (:Movie {title: 'Inception', genre: 'Thriller'})
MATCH (m:Movie {title: 'Inception'})
RETURN m

MATCH (m:Movie {title: 'Inception'})
SET m.genre = 'Sci-Fi'

MATCH (m:Movie {title: 'Inception'})
DETACH DELETE m
