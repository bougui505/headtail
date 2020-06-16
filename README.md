# headtail
Print the head and tail of a file on stdout
## Install
Link `headtail.sh` in a directory in your `$PATH`:
```bash
ln -s $PWD/headtail.sh $HOME/bin/headtail
```
## Usage
```
$ headtail -h

Usage
headtail filename
Print the first and the last 10 lines of the file
    -n NUM    print the first and the last NUM lines
    -d        Do not print the delimiter '[...]' between the head
			    and the tail of the file
```
```
$ seq 1 100 | headtail -

1
2
3
4
5
6
7
8
9
10
[...]
91
92
93
94
95
96
97
98
99
100
```
```
$ seq 1 100 | headtail -n 3 -

1
2
3
[...]
98
99
100
```
```
$ seq 1 100 | headtail -n 3 -d -

1
2
3
98
99
100
```
