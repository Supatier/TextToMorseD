/**
Usage : dmd app.d
        ./app "any text"
*/
import std.algorithm : map;
import std.array : array, join;
import std.conv : text;
import std.getopt : getopt;
import std.stdio : writeln;
import std.string : toUpper;

void main(string[] args) {
        immutable string[string] morseCode = [
                "A" : "._", "B" : "_...", "C" : "_._.", "D" : "_..", "E" : ".", "F"
                : ".._.", "G" : "__.", "H" : "....", "I" : "..", "J" : ".___", "K"
                : "_._", "L" : "._..", "M" : "__", "N" : "_.", "O" : "___", "P"
                : ".__.", "Q" : "__._", "R" : "._.", "S" : "...", "T" : "_", "U"
                : ".._", "V" : "..._", "W" : ".__", "X" : "_.._", "Y" : "_.__",
                "Z" : "__.", "1" : ".____", "2" : "..___", "3" : "...__", "4"
                : "...._", "5" : ".....", "6" : "_....", "7" : "__...", "8"
                : "___..", "9" : "____.", "0" : "____", " " : "/"
        ];
        string txt = join(args[1..$], " ");
        writeln("You typed \"", txt, "\"");
        string[] next = toUpper(txt).map!text.array;
        string ret;
        foreach (i, e; next) {
                ret ~= morseCode[e];
                ret ~= " ";
        }
        writeln(ret);
}
