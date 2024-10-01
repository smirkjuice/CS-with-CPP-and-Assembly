A useless little program that uses C# to call C++ code, then C++ calls Assembly code
<br>
## How To Build And Run (x86_64)
```
dotnet new console
nasm -f elf64 hey.asm -o hey.o # For Windows, do 'win64' instead of elf64
g++ -fPIC -c CPP_heyFromAsm.cc -o heyFromAsm.o
g++ -shared -fPIC heyFromAsm.o hey.o -o heyFromAsm.so # May say something about relocation in .text. Change code if you want to
dotnet build
dotnet run # May need to move the .so into the folder with the executable

```
