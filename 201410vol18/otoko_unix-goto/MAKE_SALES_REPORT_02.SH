#!/bin/sh

# Open usp Tsukubai original commands involved. - 'sm2' and 'self'

cat SALES             |
awk '$1 == 000001'    |
awk '$2 == 000002'    |
awk '$3 >= 20140611120000 && $3 <= 20140611130000'    |
sm2 1 2 4 4           |
self 3

