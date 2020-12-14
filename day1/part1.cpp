#include <iostream>
#include <fstream>
#include <vector>

using namespace std;

template <class T>
vector<T> getInput(string filename);

int main() {
	
	vector<int> data = getInput<int>("input1.txt");

	for(int i = 0; i < data.size(); i++) {
		for(int j = i; j< data.size(); j++) {
			if(data[i] + data[j] == 2020) {
				cout << data[i] << ", " << data[j] << endl;
				cout << data[i] * data[j] << endl;
			}
		}
	}


	return 0;
}

template <class T>
vector<T> getInput(string filename) {
	ifstream file(filename.c_str());
	vector<T> vec;
	T val;
	while(file >> val) {
		vec.push_back(val);
	}
	file.close();
	return vec;
}
