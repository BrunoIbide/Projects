public class ControleAuxilio
{
    //Variaveis
    public Beneficiario pessoa;
    private String nome;
    private String cpf;
    private String rg;
    private String numeroCelular;
    private double renda;
    private String ramoAtividade;
    private String estado;
    private String cidade;
    private String sexo;
    private int idade;
    private double valorReceber=600;
    private String chefeFamilia;
    private double saldoGoverno = 1000000000;
    //Construtor, cria o objeto do Beneficiario, transforma os parametros do objeto Beneficiario nas variaveis da classe ControleAuxilio
    public ControleAuxilio(){
       Beneficiario pessoa = new Beneficiario("Maria Souza Lima","F",18,"456.889.175.54","55.390.201-7","(14)994785874",2500.00,"Informal",
                                               "Não","SP","Bauru");
       this.nome = pessoa.nome();
       this.cpf = pessoa.cpf();
       this.rg = pessoa.rg();
       this.numeroCelular = pessoa.numeroCelular();
       this.renda = pessoa.renda();
       this.ramoAtividade = pessoa.ramoAtividade();
       this.estado = pessoa.estado();
       this.cidade = pessoa.cidade();
       this.sexo = pessoa.sexo();
       this.idade = pessoa.idade();
       this.chefeFamilia= pessoa.chefeFamilia();
        
    }
    // Checar se é chefe de familia;
    public boolean chefeFamilia(){
        if(chefeFamilia == "Sim"){
            return true;
        }
        return false;
    }
    //Checar se renda familiar é maior que 3135, se for não receberá o Auxilio Emergencial;
    public boolean renda(){
        if(renda <= 3135){
            return true;
        }
        return false; 
    }
    /**
    public void mostrar(){
        System.out.println(""+nome+"\n"+sexo+"\n"+idade+"\n"+cpf+"\n"+rg+"\n"+"\n"+numeroCelular+"\n"+renda+"\n"+adulto()+"\n"+mulher()+"\n"+ramoAtividade+"\n"+estado+"\n"+cidade);
    }
    **/
    //Checa se o Beneficiario é Adulto, se for retorna 'true' senão retorna 'false';
    public boolean adulto(){
        if(idade >= 18){
            return true;
        }
        return false;
    }
    //Checa se o sexo do Beneficiario é 'Feminino', se for retorna 'true' senão retorna 'false';
    public boolean mulher(){
        if(sexo == "F"){
            return true;
        }
        return false;
    }
    // Checar se o Beneficiario é ou não trabalhador Informal;
    public boolean informal(){
        if(ramoAtividade == "Informal"){
            return true;
        }
        return false;
    }
    // Checar se a pessoa pode receber ou não o Auxilio Emergencial;
    // Se a pessoa(beneficiario)for adulto, trabalhador informal e possui renda menor que 3135 ela receberá o Auxilio;
    public boolean receberAuxilio(){
        if(adulto() && informal() && renda()){
            return true;
        }
        return false;
    }
    // Mensagem da Aprovação do Auxílio;
    public void alerta(){
        if(receberAuxilio()){
            System.out.println("\n Auxílio Emergencial Aprovado");
            System.out.println(" Valor a receber: R$ "+valorReceber());
        }
        else{
            System.out.println("\n Auxílio Emergêncial Não Aprovado");
        }
    }
    // Checa se a pessoa(beneficiario) é mulher e chefe de familia, caso sejam true (verdadeiro) recebe R$ 1200,00
    // Se não for nenhuma dessas duas condições, então receberá apenas R$600,00;
    public double valorReceber(){
        if (mulher() == true && chefeFamilia == "Sim"){
            return valorReceber + 600;
        }
        return valorReceber;
    }
    public double saldoGoverno(){
        if(saldoGoverno >= 600){
        if(receberAuxilio()){
        return saldoGoverno - valorReceber;
      }
      return this.saldoGoverno = 0;   
    }
      return this.saldoGoverno;  
    }   
}