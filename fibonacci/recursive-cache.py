import utils
import sys

sys.setrecursionlimit(11000)

def fibMemo():
    pad = {0:0, 1:1}
    def func(n):
        if n not in pad:
            pad[n] = func(n-1) + func(n-2)
        return pad[n]
    return func

fm = fibMemo()
@utils.bench
def run(n):
    fm(n)

run(10000)
