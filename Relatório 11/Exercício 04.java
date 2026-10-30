import java.util.*;

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract String receita();
}

class Slime extends Monstro {

    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Fritar com alho e azeite.";
    }
}

class Mandragora extends Monstro {

    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Assar com ervas e temperos.";
    }
}

class Panela {
    private String material;

    public Panela(String material) {
        this.material = material;
    }

    public String getMaterial() {
        return material;
    }
}

class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println("Cozinheiro: " + nome);
        System.out.println("Panela de: " + panela.getMaterial());

        System.out.println("\n--- BANQUETE ---");

        for (Monstro monstro : ingredientes) {
            System.out.println("Monstro: " + monstro.getNome());
            System.out.println("Receita: " + monstro.receita());
            System.out.println();
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Slime slime = new Slime("Slime");
        Mandragora mandragora = new Mandragora("Mandragora");
        Cozinheiro cozinheiro = new Cozinheiro("Cozinheiro", "Ferro");

        cozinheiro.adicionarIngrediente(slime);
        cozinheiro.adicionarIngrediente(mandragora);

        cozinheiro.servirBanquete();

        // agregacao (dependencia fraca):
        // Os monstros são criados fora do cozinheiro
        // e depois adicionados à sua lista.

        // composicao (dependencia forte):
        // A panela é criada dentro do cozinheiro.
    }
}