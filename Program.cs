using System;
using System.Runtime.InteropServices;

namespace threeLangs
{
    class Program
    {
        [DllImport("heyFromAsm.so")] // We don't need to add '.so', but I'll leave it there
        public static extern int callAsmHello();
        static void Main(string[] args)
        {
            callAsmHello();
        }
    }
}