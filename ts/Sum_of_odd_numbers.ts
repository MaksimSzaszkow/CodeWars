export function rowSumOddNumbers(n: number): number {
  const first = n + Math.pow(n - 1, 2);
  const firstSum = Math.floor(Math.pow((first - 1) / 2, 2));

  const last = n + Math.pow(n, 2) - 1;
  const lastSum = Math.floor(Math.pow((last + 1) / 2, 2));

  return lastSum - firstSum;
}
