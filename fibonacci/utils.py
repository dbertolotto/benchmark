import time

def bench(f):
    def wrapper(*args, **kwargs):
        start=time.process_time()
        res = f(*args, **kwargs)
        end=time.process_time()
        print("{:.3f} sec".format(end-start))
        return res
    return wrapper

def limit(s,l):
    if len(s) < l:
        return s
    else:
        return s[:l] + "+"
