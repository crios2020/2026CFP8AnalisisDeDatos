import java.net.ServerSocket;
import java.net.Socket;

public class Server{
    public static void main(String[] args) {
        //String mensaje="<h1>Servidor de Carlos!!!</h1>";
        //String mensaje=System.getProperties()+"\n"+System.getenv();
        String mensaje="{\n" + //
                        "    \"nombre\": \"Juan\",\n" + //
                        "    \"edad\":30,\n" + //
                        "    \"casado\": false\n" + //
                        "}";
        mensaje =
            "HTTP/1.1 200 OK\r\n" +
            //"Content-Type: text/html; charset=UTF-8\r\n" +
            //"Content-Type: text/plain; charset=UTF-8\r\n" +
            "Content-Type: application/json; charset=UTF-8\r\n" +
            "Content-Length: " + mensaje.getBytes().length + "\r\n" +
            "\r\n" +
            mensaje;

        //Servidor TCP/IP
        try (ServerSocket ss=new ServerSocket(8888)) {
            while(true){
                System.out.println("- Esperando conexión de cliente ........");
                try (Socket so=ss.accept()) {
                    System.out.println("Se conecto "+so.getInetAddress());
                    so.getOutputStream().write(mensaje.getBytes());
                } catch (Exception ee) {
                    System.out.println(ee);
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}