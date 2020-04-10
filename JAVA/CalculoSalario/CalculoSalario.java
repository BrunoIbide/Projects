//Classe Teste
public class CalculoSalario
{
   public static void main (String[] args){
       
    Dados fun = new Dados();
    
    fun.horasTrabalhadas = 200;
    fun.numeroDependentes = 1;
    fun.salarioHora = 25.00;
    fun.salarioBruto = ((fun.horasTrabalhadas * fun.salarioHora) + (50 * fun.numeroDependentes));
    
    System.out.println("Salario Bruto: " + fun.salarioBruto);
    
        if(fun.salarioBruto <= 1000){
            fun.INSS = fun.salarioBruto * 8.5/100;
            System.out.println("Valor do INSS: " +fun.INSS);
    } 
    
        else if(fun.salarioBruto > 1000){
            fun.INSS = fun.salarioBruto * 9/100;
            System.out.println("Valor do INSS: " +fun.INSS);
    }
    
        if(fun.salarioBruto <= 500){
            fun.IR = fun.salarioBruto;
            System.out.println("Valor do IR: " +fun.IR);
    }
    
        else if(fun.salarioBruto > 500 && fun.salarioBruto <= 1000){
            fun.IR = fun.salarioBruto * 5/100;
            System.out.println("Valor do IR: " +fun.IR);
    }
    
        else if(fun.salarioBruto > 1000){
            fun.IR = fun.salarioBruto * 7/100;
            System.out.println("Valor do IR: " +fun.IR);
    }
   
            fun.salarioLiquido = fun.salarioBruto - fun.INSS - fun.IR;
            System.out.println("Salario Liquido: " +fun.salarioLiquido);
    }
}
