#include <iostream>
#include <vector>
using namespace std;

void inputMatrix(vector<vector<double>>& matrix) {
    for (int i = 0; i < matrix.size(); i++) {
        for (int j = 0; j < matrix[i].size(); j++) {
            cin >> matrix[i][j];
        }
    }
}


int findMaxRow(const vector<vector<double>>& matrix) {
    int maxRowIndex = 0;
    double maxVal = matrix[0][0];
    for (int i = 0; i < matrix.size(); i++) {
        for (int j = 0; j < matrix[i].size(); j++) {
            if (matrix[i][j] > maxVal) {
                maxVal = matrix[i][j];
                maxRowIndex = i;
            }
        }
    }
    return maxRowIndex;
}


void swapRows(vector<vector<double>>& matrix1, vector<vector<double>>& matrix2, int row1, int row2) {
    swap(matrix1[row1], matrix2[row2]);
}

int main() {
    setlocale(LC_ALL, "rus");
    vector<vector<double>> matrix1(4, vector<double>(5));
    vector<vector<double>> matrix2(4, vector<double>(5));

    cout << "Введіть елементи першої матриці 4х5:" << endl;
    inputMatrix(matrix1);
    cout << "Введіть елементи другої матриці 4х5:" << endl;
    inputMatrix(matrix2);

    int maxRowMatrix1 = findMaxRow(matrix1);
    int maxRowMatrix2 = findMaxRow(matrix2);

    swapRows(matrix1, matrix2, maxRowMatrix1, maxRowMatrix2);

    cout << "Матриці після обміну рядків:" << endl;


    return 0;
}
