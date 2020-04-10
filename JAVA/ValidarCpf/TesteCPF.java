
// Teste
public class TesteCPF
{
    public static void main (String[] args){
    ValidarCPF cpf = new ValidarCPF();
   
    cpf.num1 = 5; 
    cpf.num2 = 2; 
    cpf.num3 = 9; 
    cpf.num4 = 9; 
    cpf.num5 = 8; 
    cpf.num6 = 2;
    cpf.num7 = 2;
    cpf.num8 = 4;
    cpf.num9 = 7;
    cpf.num10 = 2;
    cpf.num11 = 5;
    
    
    cpf.soma1 = (cpf.num1*10)+(cpf.num2*9)+(cpf.num3*8)+(cpf.num4*7)+(cpf.num5*6)+(cpf.num6*5)+(cpf.num7*4)+(cpf.num8*3)+(cpf.num9*2);
    System.out.println("Resultado Soma1: " +cpf.soma1);
    
    cpf.resto1 = cpf.soma1 * 10 % 11;
    System.out.println("Resultado Resto1: " +cpf.resto1);
    
    cpf.soma2 = (cpf.num1*11)+(cpf.num2*10)+(cpf.num3*9)+(cpf.num4*8)+(cpf.num5*7)+(cpf.num6*6)+(cpf.num7*5)+(cpf.num8*4)+(cpf.num9*3)+(cpf.num10*2);
    System.out.println("Resultado Soma2: " +cpf.soma2);
    
    cpf.resto2 = cpf.soma2 * 10 %11;
    System.out.println("Resultado Resto2: " +cpf.resto2);
    
    if(cpf.resto1 == cpf.num10 && cpf.resto2 == cpf.num11){
        System.out.print("CPF: "+cpf.num1+cpf.num2+cpf.num3+"."+cpf.num4+cpf.num5+cpf.num6+"."+cpf.num7+cpf.num8+cpf.num9+"-"+cpf.num10+cpf.num11);
        System.out.print("\n O CPF é Válido \n");
    } else if(cpf.resto1 != cpf.num10 && cpf.resto2 != cpf.num11){
        System.out.print("CPF: "+cpf.num1+cpf.num2+cpf.num3+"."+cpf.num4+cpf.num5+cpf.num6+"."+cpf.num7+cpf.num8+cpf.num9+"-"+cpf.num10+cpf.num11);
        System.out.println("\n O CPF é Inválido");
    }
}
}

