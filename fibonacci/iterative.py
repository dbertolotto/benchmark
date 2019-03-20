import utils

def fibIter(n):
    if n < 2:
        return n
    fibPrev = 1
    fib = 1
    for num in range(2, n):
        fibPrev, fib = fib, fib + fibPrev
    return fib

@utils.bench
def run(n):
    return fibIter(n)

n=25000
s = utils.limit("{}".format(run(n)), 10)
print('n={} fib={}'.format(n, s))
