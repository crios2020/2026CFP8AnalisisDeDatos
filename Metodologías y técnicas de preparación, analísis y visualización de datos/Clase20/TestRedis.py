print("-- Test Redis --")

#pip install redis

import redis

r=redis.Redis(
    host='192.168.20.224',
    port=6379,
    username='user',
    password='java',
    decode_responses=True
)
print(r.ping())

r.set(1,'Lunes')
r.set(2,'Martes')
r.set(3,'Miércoles')
r.set(4,'Jueves')
r.set(5,'Viernes')
r.set(6,'Sábado')
r.set(7,'Domingo')

print(r.get(3))

