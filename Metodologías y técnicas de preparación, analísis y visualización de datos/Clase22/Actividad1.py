print("-- Actividad 1 --")
import redis

# pip install redis

r=redis.Redis(
    host='192.168.16.248',
    port=6379,
    db=0,
    username='user',
    password='java',
    decode_responses=True
)
print(r.ping())

r.flushdb()        #Limpia toda la BD

r.set("usuario:1","Carlos")
r.set("usuario:2","Ana")
r.set("usuario:3","Pedro")

print(r.get("usuario:1"))

r.set("usuario:2","Maria")
print(r.get("usuario:2"))

#           clave           valor
#           usuario:1       Carlos
#           usuario:2       Maria
#           usuario:3       Padro

r.set("edad:1",25)
r.set("edad:2",32)
r.set("edad:3",41)

print(r.get("edad:2"))

print(r.type("usuario:2"))
print(r.type("edad:2"))

#Listas
r.lpush("tareas","Estudiar Redis")
r.lpush("tareas","Hacer Ejercicios")
r.lpush("tareas","Preparar la clase")
r.rpush("tareas","Hacer el TP")
print(r.lrange("tareas",0,-1))


#Borramos al usuario:3
r.delete("usuario:3")
print(r.get("usuario:3"))

print("-- Carrito de compra --")

r.set("cliente:1","Juan")
r.set("producto:1","Teclado")
r.set("producto:2","Mouse")
r.set("producto:3","Monitor")

r.rpush("carrito:1","Teclado")
r.rpush("carrito:1","Mouse")

print(r.lrange("carrito:1",0,-1))

print(r.lpop("carrito:1"))

print(r.lrange("carrito:1",0,-1))

#print(r.get("tareas"))         #Error

#print("------------------------------------")
#for key in r.scan_iter("*"):                    #Muestra todo
#    print(key)
#    print(key," - ",r.get(key))