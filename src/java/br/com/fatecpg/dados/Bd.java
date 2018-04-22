package br.com.fatecpg.dados;
import java.util.ArrayList;

public class Bd {
    private static ArrayList<Cliente> cliente = new ArrayList<>();
 private static ArrayList<Fornecedor> fornecedor = new ArrayList<>();
 
 
    public static ArrayList<Cliente> getCliente() {
        return cliente;
    }
       public static ArrayList<Fornecedor> getFornecedor() {
        return fornecedor;
    }
}
 