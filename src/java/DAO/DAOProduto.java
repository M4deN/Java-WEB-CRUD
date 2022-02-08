package DAO;
import java.sql.Connection;
import MODEL.Produto;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.ResultSet;
/**
 *
 * @author Charlie
 */

public class DAOProduto{
   
    private PreparedStatement stmt;
    private Connection conn;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Produto> lista = new ArrayList<>();
    
    public DAOProduto(){
        
        conn = new Conexao().getConexao();
    }
    
    public void InserirProduto(Produto produto){
        
        String sql = "INSERT INTO tb_produtos(id_produto,nome_produto,qtd_produto) VALUES(?,?,?) ";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1,produto.getId());
            stmt.setString(2,produto.getNomeproduto());
            stmt.setInt(3,produto.getQtd());
            
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro Inserir Produto: "+erro);
        }
    }
    
    public ArrayList<Produto> listarProdutos(){
        
        String sql = "SELECT * FROM tb_produtos";
        
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()){
                
                Produto produto = new Produto();
                produto.setId(rs.getInt("id_produto"));
                produto.setNomeproduto(rs.getString("nome_produto"));
                produto.setQtd(rs.getInt("qtd_produto"));
        
                lista.add(produto);
            }
            
        }catch(Exception erro){
        
        throw new RuntimeException("Erro listar todos os Produtos: "+erro);
        
        }
        return lista;
    }
    
     public ArrayList<Produto> listarProdutoNome(String valor){
        
        String sql = "SELECT * FROM tb_produtos WHERE nome_produto LIKE '%"+valor+"%'";
        
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()){
                
                Produto produto = new Produto();
                produto.setId(rs.getInt("id_produto"));
                produto.setNomeproduto(rs.getString("nome_produto"));
                produto.setQtd(rs.getInt("qtd_produto"));
                lista.add(produto);
            }
            
        }catch(Exception erro){
        
        throw new RuntimeException("Erro ao listar o produto: "+erro);
        
        }
        return lista;
    }
     
     public void ExcluirProduto(Produto produto){
        
        String sql = "DELETE FROM tb_produtos WHERE id_produto = ? ";
        
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1,produto.getId());
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro Excluir Cliente: "+erro);
        }
    }
     
     public void EditarProduto(Produto produto){
        
        String sql = "UPDATE tb_produtos SET nome_produto = ?, qtd_produto = ? WHERE id_produto = ?; ";
        
        try{
            stmt = conn.prepareStatement(sql);
       
            stmt.setString(1,produto.getNomeproduto());
            stmt.setInt(2,produto.getQtd());
            stmt.setInt(3,produto.getId());
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro Editar Cliente: "+erro);
        }
    }
    
    
}
