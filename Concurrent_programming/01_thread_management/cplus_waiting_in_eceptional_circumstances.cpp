//
// Created by zwpdbh on 12/01/2018.
//



#include <thread>
#include <iostream>

/**It shows use a class that does join() in its destructor
 * Using RAII(Resource Acquisition Is Initialization) to wait for a thread to complete*/

class thread_guard {
private:
    std::thread& t;

public:
    explicit thread_guard(std::thread& t_): t(t_) {}

    ~thread_guard() {
        if (t.joinable()) {
            t.join();
        }
    }

    thread_guard(thread_guard const&)= delete;
    thread_guard& operator=(thread_guard const&)= delete;
};


/**C++ Standard Library, std::thread works with any callable type,
 * so you can pass an instance of a class/structure
 * with a function call operator to the std::thread constructor instead:*/
class func {
private:
    int i;
    int times;
    void do_something(int i) {
        std::cout << i << std::endl;
    }
    void do_another(int i) {
        std::cout << i * 10 << std::endl;
    }
public:
    explicit func(int& i, int& times): i(i), times(times) {}
    void operator() () {
        for (int j = 0; j < this->times; ++j) {
            do_something(this->i);
            do_another(this->i);
        }
    }
};

void f() {
    int some_local_state = 2;
    int times = 5;
    func my_func(some_local_state, times);
    std::thread t(my_func);

    thread_guard g(t);

    printf("do something in current thread\n");
}

int main() {
    f();
    return 0;
}