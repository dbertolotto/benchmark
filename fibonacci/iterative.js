const utils = require('./utils');


const fibIter = (n) => {
  if (n < 2) {
    return n;
  }
  let a = 0n;
  let b = 1n;
  for (let num = n - 1; num > 0; num--) {
    a = a + b;
    [a, b] = [b, a];
  }
  return b;
}

const run = (n) => utils.bench(fibIter)(n);


n = 80000;
s = utils.limit(`${run(n)}`, 10);
console.log(`n=${n} fib=${s}`);
