import std::io;
import std::core::array;

fn void main () {
    int sum = 0;

    int first = 0;
    int second = 1;
    int last;

    int limit = 4000000;

    do {
        last = first + second;
        first = second;
        second = last;

        if (second % 2 == 0) sum += second;
    } while (second < limit);

    io::printfn("Sum: %d", sum);
}
