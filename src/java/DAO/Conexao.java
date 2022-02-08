package DAO;
import java.sql.DriverManager;
import java.sql.Connection;

public class Conexao {
    public Connection getConexao(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/BDAvaliacao?useSSL=false&useTimezone=true&serverTimezone=UTC","","");
        }catch(Exception erro){
            throw new RuntimeException("Erro classe conexão: "+erro);
        }
    }
}
