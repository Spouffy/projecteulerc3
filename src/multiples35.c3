import std::io;
import std::core::array;

fn void main () {
    int total = 0;
    int[] allNums = {};

    for (int i = 1; i < 1000 ; i++) {
        if (i%3 == 0 || i%5 == 0) {
           allNums = array::tconcat(allNums, (int[*]){i}); 
           total += i;
        }
    }

    io::print("Numbers List : ");
    io::printn(allNums);
    io::printf("Total : %d", total);
    return;
}
