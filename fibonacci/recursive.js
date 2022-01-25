const utils = require('./utils');

const fibo = (n) => {
  if (n < 2) {
    return n;
  } else {
    return fibo(n-1) + fibo(n-2);
  }
}


const run = (n) => utils.bench(fibo)(n);


n = 37
s = utils.limit(`${run(n)}`, 10);
console.log(`n=${n} fib=${s}`);
