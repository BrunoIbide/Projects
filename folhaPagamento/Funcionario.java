//Bruno Ibide
public class Funcionario
{
    String nome;
    double salarioHora;
    double horasTrabalhadas;
    int numeroDependentes;
    double salarioBruto;
    double salarioLiquido;
    double INSS;
    double IR;
    
        Funcionario(String nome,double salarioHora,double horasTrabalhadas,int numeroDependentes){
            this.nome = nome;
            this.salarioHora = salarioHora;
            this.horasTrabalhadas = horasTrabalhadas;
            this.numeroDependentes = numeroDependentes;
        }
        
        public double salarioBruto(){
             return this.horasTrabalhadas * this.salarioHora + (50 * this.numeroDependentes);
          
        }
        
        public void mostraSalario(){
            System.out.println("Salario bruto: "+salarioBruto());
        }
        
        public double valorINSS(){
            if(salarioBruto() <= 1045){
                this.INSS = salarioBruto()*7.5/100;  
            }
            else if(salarioBruto() > 1045 && salarioBruto() <= 2089){
            this.INSS = salarioBruto()*9/100;
        }
            else if(salarioBruto() > 2089 && salarioBruto() <= 3134){
            this.INSS = salarioBruto()*12/100;
            }
            else if(salarioBruto() > 3134 && salarioBruto() <= 6101){
            this.INSS = salarioBruto()*14/100;
            }
        return this.INSS;
    }  
        
        public double valorIR(){
            if(salarioBruto() <= 1903){
                this.IR = 0;
            } 
            else if(salarioBruto() > 1903 && salarioBruto() <=2826){
                this.IR = salarioBruto()*7.5/100;
            }
            else if(salarioBruto() > 2826 && salarioBruto() <= 3751){
                this.IR = salarioBruto()*15/100;
            }
            else if(salarioBruto() > 3751 && salarioBruto() <= 4664){
                this.IR = salarioBruto()*22.5/100;
            }
            else if(salarioBruto() > 4664){
                this.IR = salarioBruto()*27.5/100;
            }
            return this.IR;
        }
        public double salarioLiquido(){
            return salarioBruto() - valorINSS() - valorIR();
           
        }
}
