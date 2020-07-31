//Bruno Ibide
public class testeFolhaPagamento
{
    public static void main(String[] args){
        
    Funcionario a = new Funcionario("Bruno",80,30,1);
    
    System.out.println(a.nome);
    a.mostraSalario();
    System.out.println("Valor INSS: "+a.valorINSS());
    System.out.println("Valor Imposto de Renda: "+a.valorIR());
    System.out.println("Salario Liquido: "+a.salarioLiquido());
}
}
