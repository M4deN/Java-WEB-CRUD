package DAO;
import java.sql.Connection;
import MODEL.Cliente;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;

public class DAOCliente {
   
    private PreparedStatement stmt;
    private Connection conn;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Cliente> lista = new ArrayList<>();
    
    public DAOCliente(){
        
        conn = new Conexao().getConexao();
    }
    
    public void InserirCliente(Cliente usuario){
        
        String sql = "INSERT INTO tb_cliente(nome_cliente,email_cliente,cpf_cliente,telefone_cliente) VALUES(?,?,?,?) ";
        
        try{
            
            stmt = conn.prepareStatement(sql);
            stmt.setString(1,usuario.getNome());
            stmt.setString(2,usuario.getEmail());
            stmt.setString(3,usuario.getCpf());
            stmt.setString(4,usuario.getTelefone());
            stmt.execute();
            stmt.close();
            
             
        }catch(Exception erro){
            throw new RuntimeException("Erro Inserir Cliente: "+erro);
        }
    }
    
    public ArrayList<Cliente> listarClientes(){
        
        String sql = "SELECT * FROM tb_cliente";
        
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()){
                
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id_cliente"));
                cliente.setNome(rs.getString("nome_cliente"));
                cliente.setEmail(rs.getString("email_cliente"));
                cliente.setCpf(rs.getString("cpf_cliente"));
                cliente.setTelefone(rs.getString("telefone_cliente"));
                lista.add(cliente);
            }
            
        }catch(Exception erro){
        
        throw new RuntimeException("Erro listar todos os clientes: "+erro);
        
        }
        return lista;
    }
    
     public ArrayList<Cliente> listarClientesNome(String valor){
        
        String sql = "SELECT * FROM tb_cliente WHERE nome_cliente LIKE '%"+valor+"%'";
        
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()){
                
                Cliente cliente = new Cliente();
                cliente.setId(rs.getInt("id_cliente"));
                cliente.setNome(rs.getString("nome_cliente"));
                cliente.setEmail(rs.getString("email_cliente"));
                cliente.setCpf(rs.getString("cpf_cliente"));
                cliente.setTelefone(rs.getString("telefone_cliente"));
                lista.add(cliente);
            }
            
        }catch(Exception erro){
        
        throw new RuntimeException("Erro ao listar o cliente: "+erro);
        
        }
        return lista;
    }
    public void ExcluirCliente(Cliente usuario){
        
        String sql = "DELETE FROM tb_cliente WHERE id_cliente = ? ";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1,usuario.getId());
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro Excluir Cliente: "+erro);
        }
    }
    
       public void EditarCliente(Cliente usuario){
        
        String sql = "UPDATE tb_cliente SET nome_cliente = ?, email_cliente = ?, cpf_cliente = ?, telefone_cliente = ? WHERE id_cliente = ?; ";
        
        try{
            stmt = conn.prepareStatement(sql);
       
            stmt.setString(1,usuario.getNome());
            stmt.setString(2,usuario.getEmail());
            stmt.setString(3,usuario.getCpf());
            stmt.setString(4,usuario.getTelefone());
            stmt.setInt(5,usuario.getId());
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro Editar Cliente: "+erro);
        }
    }
    
}