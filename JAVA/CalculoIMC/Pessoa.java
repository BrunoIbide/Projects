// Classe
public class Pessoa{
    double resultado;
    double peso;
    double altura;
    

public static void main (String[] args){
    
    Pessoa pessoa = new Pessoa(); 
    
    pessoa.peso = 70.00;
    pessoa.altura = 1.75;
    
    pessoa.resultado = pessoa.peso / (pessoa.altura * pessoa.altura);
    pessoa.resultado = pessoa.resultado;
    
         if(pessoa.resultado < 18.5){
              System.out.println("Você possui deficit de massa Corporal // risco baixo(com risco de outras doenças)");
} 

         else if(pessoa.resultado > 18.5 && pessoa.resultado < 24.9){
             System.out.println("Você possui uma Massa Corporal Normal // risco Normal ");
} 

         else if(pessoa.resultado > 24.9 && pessoa.resultado < 29.9){
             System.out.println("Você possui Sobrepeso // risco Elevado ");
} 

        else if(pessoa.resultado > 29.9 && pessoa.resultado < 34.9){
            System.out.println("Você possui Obesidade Leve // risco Alto ");
} 

        else if(pessoa.resultado > 34.9 && pessoa.resultado < 39.9){
            System.out.println("Você possui Obesidade Media // risco Muito Alto ");
} 

        else if(pessoa.resultado >= 40){
            System.out.println("Você possui Obesidade Morbida // risco Iminente ");
}
}
}