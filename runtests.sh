cd Tests;
ghc --make TestPorter
./TestPorter < voc.txt | diff - output.txt
