#include <iostream>
using namespace std;

int main(){
    int matriz_solar[5][5];
    int op, f, c;

    while(true){
        cout << 
        "=== TELEMETRIA DO PAINEL SOLAR ===\n"
        "1. Ativar Celula\n"
        "2. Ver Mapa da Matriz\n"
        "3. Sair\n"
        "Escolha uma opcao: "
        << endl;

        cin >> op;

        if(op == 1){
            cout << "Digite a fileira (0-4): " << endl;
            cin >> f;
            cout << "Digite a coluna (0-4): " << endl;
            cin >> c;

            if(matriz_solar[f][c] == 0){
                matriz_solar[f][c] = 1;
                cout << "Sucesso: Célula solar ativada!" << endl; 
            }
            else {
                cout << "Erro: Célula solar já está em operação!" << endl;
            }
        }

        if(op == 2){
            cout << "--- Mapa da Matriz Solar ---" << endl;

            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 5; j++) {
                    cout << "[" << matriz_solar[i][j] << "] ";
                }
                cout << endl;
            }
        }

        if(op == 3){
            break;
        }
    }
    
    int cel_ativas = 0;
    int cel_desativas = 0;

    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if(matriz_solar[i][j] == 1){
                cel_ativas++;
            }
            else cel_desativas++;
        }
    }

    float cap_operacional = (cel_ativas / 25.0) * 100;

    cout << 
        "=== RELATORIO FINAL DE OPERACAO ===\n"
        "Total de celulas ATIVAS: " << cel_ativas << "\n"
        "Total de celulas INATIVAS: " << cel_desativas << "\n"
        "Capacidade Operacional: " << cap_operacional << "%"
    << endl;

    return 0;
}