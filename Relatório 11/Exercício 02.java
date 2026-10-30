import java.util.*;

class ItemDoCardapio {
    private String nome;
    private double preco;

    public ItemDoCardapio(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome() {
        return nome;
    }

    public double getPreco() {
        return preco;
    }

    public double precoFinal() {
        return preco;
    }
}

class ComboLeblanc extends ItemDoCardapio {

    public ComboLeblanc(String nome, double preco) {
        super(nome, preco);
    }

    @Override
    public double precoFinal() {
        return getPreco() * 0.9;
    }
}

class CafeLeblanc {
    private ArrayList<ItemDoCardapio> cardapio;

    public CafeLeblanc() {
        this.cardapio = new ArrayList<>();
    }

    public void adicionar(ItemDoCardapio item) {
        cardapio.add(item);
    }

    public void mostrarCardapio() {
        for (ItemDoCardapio item : cardapio) {
            System.out.println(item.getNome() + " - R$ " + item.precoFinal());
        }
    }
}

public class Main {
    public static void main(String[] args) {
        ItemDoCardapio cafe = new ItemDoCardapio("Cafe", 10.0);
        ItemDoCardapio frango = new ItemDoCardapio("Frango", 25.0);
        ComboLeblanc miojo = new ComboLeblanc("Miojao premium", 30.0);
        CafeLeblanc leblanc = new CafeLeblanc();

        leblanc.adicionar(cafe);
        leblanc.adicionar(frango);
        leblanc.adicionar(miojo);

        leblanc.mostrarCardapio();
    }
}