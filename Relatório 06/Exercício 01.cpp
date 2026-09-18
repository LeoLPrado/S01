#include <iostream>
using namespace std;

class Banda {
    public:
        string nome;
        int integrantes;
        float potenciaSom;
        int energia;

        Banda(string n, int i, float p, int e) :
            nome(n), integrantes(i), potenciaSom(p), energia(e) {}

        void duelar(Banda &rival) {
            cout << nome << " esta duelando contra " << rival.nome << "!" << endl;
            rival.energia -= potenciaSom;
        }

        virtual ~Banda() {}
};

int main(){
    Banda banda1("Rock Stars", 5, 80.0, 100);
    Banda banda2("Metal Force", 4, 60.0, 100);

    banda1.duelar(banda2);

    cout << "\n--- Status final ---" << endl;
    cout << banda1.nome << " - Energia: " << banda1.energia << endl;
    cout << banda2.nome << " - Energia: " << banda2.energia << endl;

    return 0;
}