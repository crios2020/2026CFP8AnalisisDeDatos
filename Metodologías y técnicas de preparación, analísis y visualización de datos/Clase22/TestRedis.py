print("-- Redis --")
import redis

# pip install redis

r=redis.Redis(
    host='192.168.16.23',
    port=6379,
    db=0,
    username='user',
    password='java',
    decode_responses=True
)
print(r.ping())

r.set(1,"Lunes")
r.set(2,"Martes")
r.set(3,"Miércoles")
r.set(4,"Jueves")
r.set(5,"Viernes")
r.set(6,"Sábado")
r.set(7,"Domingo")

r.set("mes1","Enero")
r.set("mes2","Febrero")
r.set("mes3","Marzo")
r.set("mes4","Abril")
r.set("mes5","Mayo")
r.set("mes6","Junio")
r.set("mes7","Julio")
r.set("mes8","Agosto")
r.set("mes9","Septiembre")
r.set("mes10","Octubre")
r.set("mes11","Noviembre")
r.set("mes12","Diciembre")

print(r.get(5))
print(r.get(20))
print(r.get("mes5"))
r.delete(4)
r.delete("mes8")
print("------------------------------------")
for i in range(1, 8):
    print(r.get(i))
    
print("------------------------------------")
for key in r.scan_iter("*"):                    #Muestra todo
    print(key," - ",r.get(key))
    
print("------------------------------------")
for key in r.scan_iter("mes*"):                    #Muestra solo los meses
    print(key," - ",r.get(key))


