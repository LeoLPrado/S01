

#include <iostream>
using namespace std;

int main(){
    float capacidade_maxima;
    float peso_carregado = 0;
    float peso_total = 0;
    float peso_descarregado = 0;
    int op = 4;

    cout << "Informe a capacidade maxima de carga do drone (kg): " << endl;
    cin >> capacidade_maxima;

    while (true){
        cout << 
            "=== SISTEMA DE CARGA DO DRONE === \n"
            "1. Verificar Carga \n"
            "2. Carregar Pacote \n"
            "3. Descarregar Pacote \n"
            "4. Encerrar Operacao \n"
            "Escolha uma opcao: "
        << endl;

        cin >> op;

        if(op == 1){
            cout << "Carga Atual: " << peso_total << " kg / " << capacidade_maxima << " kg" << endl;
            cout << "Espaco Disponivel: " << capacidade_maxima - peso_total <<  " kg" << endl;
        }

        if(op == 2){
            cout << "Digite o peso do pacote a ser carregado (kg): " << endl;
            cin >> peso_carregado;
            if(peso_total + peso_carregado <= capacidade_maxima){
                peso_total += peso_carregado;
                cout << "Pacote adicionado com sucesso!" << endl;
            } 
            else {
                cout << "Alerta: Peso máximo de decolagem excedido! Operação cancelada." << endl;
            }
        }

        if(op == 3){
            cout << "Digite o peso do pacote a ser descarregado (kg): " << endl;
            cin >> peso_descarregado;
            if(peso_descarregado <= peso_total){
                peso_total -= peso_descarregado;
                cout << "Pacote descarregado com sucesso!" << endl;
            } 
            else {
                cout << "Valor impossivel de descarregar!" << endl;
            }
        }

        if(op == 4){
            cout << "Encerrando sistema de telemetria..." << endl;
            break;
        }
    }
    return 0;
}