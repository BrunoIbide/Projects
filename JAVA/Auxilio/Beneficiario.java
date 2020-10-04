
//Trabalho Realizado pelos alunos Lucas Alves Oliveira RA: 48886 e por Bruno Vinicis Ibide de Oliveira RA: 48539
//Curso de Ciência da Computação 2°Ano;
public class Beneficiario
{
    //Variaveis
   private String nome; //Nome Completo
   private int idade; //Idade da Pessoa
   private String sexo; //Utilizar 'M' para masculino e 'F' para feminino;
   private String cpf; // Exemplo: 000.000.000-00/
   private String rg;  // Rg: 00.000.000-0, 
   private String numeroCelular; //(DDD) XXXX-XXXX ou (DDD) XXXXX-XXXX;
   private double renda;    //Renda Familiar;
   private String ramoAtividade; //Caso seja trabalhador informal utilizar a palavra 'Informal', senão digitar a área em qual trabalha;
   private String estado; //Utilizar a sigla dos Estados. Exemplo: São Paulo = 'SP';
   private String cidade; // Nome da cidade em que mora;
   private String chefeFamilia; // Indica se é mãe e solteira, os dois devem ser true para ser chefe de família;
   
   //Metodo Construtor, ira pegar os Parametros (dados) do Beneficiario;
   public Beneficiario(String nome,String sexo,int idade,String cpf,String rg,String numeroCelular,double renda,String ramoAtividade,String chefeFamilia,String estado,String cidade){
       this.nome = nome;
       this.cpf= cpf;
       this.rg=rg;
       this.numeroCelular = numeroCelular;
       this.renda = renda;
       this.ramoAtividade = ramoAtividade;
       this.estado = estado;
       this.cidade = cidade;
       this.sexo = sexo;
       this.idade = idade;
       this.chefeFamilia = chefeFamilia;
    }
    //Get Variaveis
    public String nome(){
        return nome;   
    }
    public String cpf(){
        return cpf;   
    }
    public String numeroCelular(){
        return numeroCelular;   
    }
    public double renda(){
        return renda;   
    }
    public String ramoAtividade(){
        return ramoAtividade;   
    }
    public String estado(){
        return estado;   
    }
    public String cidade(){
        return cidade;   
    }
    public String rg(){
        return rg;   
    }
    public String sexo(){
        return sexo;   
    }
    public int idade(){
        return idade;
    }
    public String chefeFamilia(){
        return chefeFamilia;
    }
}
