HSET user:1 name "John Doe" age 30 location "New York"
HSET user:2 name "Jane Smith" age 25 location "London"

LPUSH user:1:posts 1001
LPUSH user:1:posts 1002
LPUSH user:2:posts 2001

HSET post:1001 content "¡Hola a todos!" created_at "2023-05-10 10:00:00" likes 10
HSET post:1002 content "Feliz cumpleaños a mí" created_at "2023-05-09 15:30:00" likes 20
HSET post:2001 content "¡Gran día en la playa!" created_at "2023-05-08 12:45:00" likes 15



HSET user:3 name "Sarah Johnson" age 35 location "San Francisco"

HGETALL user:1
HGET user:1 name

HSET user:2 age 26
DEL user:3

LPUSH user:1:posts 1003
HSET post:1003 content "un comentartio más" created_at "2023-05-09 15:30:00" likes 15

HGETALL post:1001

HSET post:1002 likes 30
DEL post:1003