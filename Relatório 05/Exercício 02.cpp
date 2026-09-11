#include <iostream>
using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho){
    float probabilidade_total = 1.0;
    for(int i = 0; i < tamanho; i++){
        probabilidade_total = probabilidade_total * probabilidades[i];
    }
    return probabilidade_total;
}

int main(){
    int N;

    cout << "Peça ao usuário a quantidade de componentes do sistema: " << endl;
    cin >> N;

    float probabilidades[N];

    for(int i = 0; i < N; i++){
        cout << "Digite a probabilidade do componente " << i << " (ex: 0.95): " << endl;
        cin >> probabilidades[i];
    }
    float confiabilidade = calcular_confiabilidade_sistema(probabilidades, N);
    cout << "Confiabilidade total do sistema: " << confiabilidade << " (" << confiabilidade * 100 << "%)";
    return 0;
}