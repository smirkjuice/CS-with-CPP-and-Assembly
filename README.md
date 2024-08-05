A useless little program that uses C# to call C++ code, then C++ calls Assembly code
<br>
## How to build and run

1. Create a dotnet project. I did `dotnet new console`
2. Put the code in the corresponding files
3. Compile and assemble the code, I used the following commands:
 `nasm -f elf64 hey.asm -o hey.o` Note: elf64 will not work on Windows, you'll need to do `win64` instead
 `g++ -fPIC -c CPP_heyFromAsm.cc -o heyFromAsm.o`
 `g++ -shared -fPIC heyFromAsm.o hey.o -o heyFromAsm.so` Note: This might give you a warning about relocation in .text. You can fix this if you want, I won't because it's just a test
 `dotnet build`
 `dotnet run` Note: You might need to move the .so file into the directory where the executable is
