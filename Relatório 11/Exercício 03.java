import java.util.*;

interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {
    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " apareceu com sua nave espacial");
    }
}

class EspiritoYoukai implements Sobrenatural {
    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println(nome + " surgiu das sombras");
    }
}

class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
    }

    public void investigar(String local) {
        Sobrenatural ser = avistamentos.get(local);

        if (ser == null) {
            System.out.println("O local " + local + " esta tranquilo");
        } else {
            ser.manifestar();
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Alienigena alien = new Alienigena("alien");
        EspiritoYoukai espirito = new EspiritoYoukai("espirito");
        MapaDeAvistamentos mapa = new MapaDeAvistamentos();

        mapa.registrar("Hospital abandonado", alien);
        mapa.registrar("Casa", espirito);

        mapa.investigar("Casa");
        mapa.investigar("Hospital");
        mapa.investigar("Floresta");
    }
}