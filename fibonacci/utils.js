const bench = (f) => {
  return (...args) => {
    start = performance.now();
    res = f(...args);
    end = performance.now();
    console.log(`${end - start} ms`);
    return res;
  }
}

const limit = (s,l) => {
  if (s.length < l) {
    return s;
  } else {
    return s.slice(0, l) + '+';
  }
}

module.exports = { bench, limit };
