#include <iostream>
using namespace std;

class LinkSocial {
    protected:
        string nome;
        string arcana;
        int rank;

    public:
        //Getters
        string getNome() {return nome;}
        string getArcana() {return arcana;}
        int getRank() {return rank;}

        // Setters
        void setNome(string n) {nome = n;}
        void setArcana(string a) {arcana = a;}
        void setRank(int r) {rank = r;}

        void subirRank(){rank += 1;}

        virtual ~LinkSocial() {}
};

int main(){
    LinkSocial link;

    link.setNome("Leo");
    link.setArcana("Fogo");
    link.setRank(1);

    link.subirRank();

    cout << "Nome: " << link.getNome() << endl;
    cout << "Arcana: " << link.getArcana() << endl;
    cout << "Rank: " << link.getRank() << endl;
    return 0;
}