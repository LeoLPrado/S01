#include <iostream>
using namespace std;

class MembroInatel {
    public:
        string nome;

        MembroInatel(string n) : nome(n) {}

        virtual void seApresentar() {
            cout << "Sou um membro da comunidade Inatel: " << nome << "." << endl;
        }

        virtual ~MembroInatel() {}
};

class Aluno : public MembroInatel {
    public:
        string curso;

        Aluno(string n, string c) : MembroInatel(n), curso(c) {}

        void seApresentar() override {
            cout << "Meu nome é " << nome << " e estudo no curso de " << curso << "." << endl; 
        }
};

class Professor : public MembroInatel {
    public:
        string disciplina;

        Professor(string n, string d) : MembroInatel(n), disciplina(d) {}

        void seApresentar() override {
            cout << "Meu nome é " << nome << " e leciono a disciplina de " << disciplina << "." << endl; 
        }
};

int main(){
    Aluno aluno("Leo", "Engenharia de Software");
    Professor prof("Mosca", "Compiladores");

    aluno.seApresentar();
    prof.seApresentar();

    return 0;
}