#define EXPORT_SO __attribute__((visibility("default"))) 
// ^ I did this because I'm on Linux. For Windows, type this:
/*
    #define DLL_EXPORT __declspec(dllexport)
*/
// You don't have to call it DLL_EXPORT, it can be called anything you want
extern "C" void ASM_hello();

extern "C" {
    EXPORT_SO void callAsmHello() {
        ASM_hello();    
    }
}
