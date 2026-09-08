#include <unistd.h>
#include <sys/syscall.h>
#include <string.h>

int main() {

    write(1, "hello STDOUT\n", 14);
    write(2, "ERROR: this is an error", 24);

}