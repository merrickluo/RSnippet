# -*- mode: snippet -*-
# Last modified: <2012-02-16 11:46:53 Thursday by richard>
# name: while(cin)
# key: whilecin
# contributor: Richard Wong <chao787@gmail.com>
# --
while (cin >> ival, !cin.eof()){
if (cin.bad())
throw runtime_error("IO stream corrupted");
if (cin.fail()){
cerr << "bad data, try again";
cin.clear(istream::failbit);
continue;
}
$0 //normal process.
}

