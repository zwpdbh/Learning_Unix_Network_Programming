//
// Created by zwpdbh on 08/01/2018.
//


#include <iostream>
#include <thread>

void hello() {
    std::cout << "Hello world\n";
}


int main() {
    std::thread t(hello);
    t.join();
}