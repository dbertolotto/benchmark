import utils


def fibo(n):
    if n < 2:
        return n
    else:
        return fibo(n-1) + fibo(n-2)


@utils.bench
def run(n):
    return fibo(n)


n = 37
s = utils.limit("{}".format(run(n)), 10)
print('n={} fib={}'.format(n, s))
