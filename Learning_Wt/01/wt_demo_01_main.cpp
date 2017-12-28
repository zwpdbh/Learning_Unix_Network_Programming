//
// Created by zwpdbh on 23/12/2017.
//

#include "DemoApplication.h"

using namespace std;
using namespace Wt;

int main(int argc, char* argv[]) {
    return WRun(argc, argv, [](const WEnvironment& env){
//        return new DemoApplication(env);
        return make_unique<DemoApplication>(env);
    });
}