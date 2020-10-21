e_primo_ou_nao(number) => {
  number = Math.floor(number);
  let dividedBy = [1, number];
  let prime = true;
  const limit = Math.sqrt(number);
  for (let i = 2; i <=limit; i++) {
    if(!(number%i)) {
      prime = false;
      dividedBy.push([i, number/i])
    }
  }
  return {
    prime: prime,
    dividedBy: dividedBy
  }
};

