
#include "initialization.h"

#ifdef FORCE_LIMIT_OPENBLAS_NUM_THREADS
#include <cblas.h>
#endif
#include <iostream>
#include <locale>
#include <clocale>
namespace Gadgetron::Server {

    void configure_blas_libraries() {

#ifdef FORCE_LIMIT_OPENBLAS_NUM_THREADS
        /*
         * Certain distributions (Ubuntu) doesn't ship OpenMP OpenBLAS, so we have to make do with
         * a version compiled for pthreads. It'll work - maybe even without degrading performance
         * a lot, but only if we limit the number of threads to one.
         */
        openblas_set_num_threads(1);
#endif

    }

    void set_locale() {
        try {
            std::locale::global(std::locale(""));
        } catch (...) {
            std::locale::global(std::locale::classic());
        }
    }

    //void set_locale() { 
    //    try {
	   // std::wcout << "User-preferred locale setting is " << std::locale("").name().c_str() << '\n';
	   // std::setlocale(LC_ALL, "en_US.UTF-8");
    //        std::locale id("en_US.UTF-8");
    //        std::locale::global(id);
    //        std::cout.imbue(std::locale());
    //        std::cerr.imbue(std::locale());
    //        std::clog.imbue(std::locale());
    //        std::wcout.imbue(std::locale());
    //        std::wcerr.imbue(std::locale());
    //        std::wclog.imbue(std::locale());
    //    } catch (...) {
    //        std::cout << "Exceptions in set_locale() ..." << std::endl;
    //    }
    //}
}
