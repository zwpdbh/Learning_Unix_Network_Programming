//
// Created by zwpdbh on 12/01/2018.
//

#include <iostream>
#include <thread>

void background_task() {
    std::cout << "executing task: " << std::this_thread::get_id() << std::endl;
}

int main() {
    std::cout << "executing main task: " << std::this_thread::get_id() << std::endl;

    std::thread t(background_task);

    t.join();
    return 0;
}