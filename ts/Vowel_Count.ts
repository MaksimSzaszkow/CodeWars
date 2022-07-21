export class Kata {
  static vowels = ["a", "e", "i", "o", "u"];

  static getCount(str: string): number {
    let count = 0;

    for (let char of str) {
      if (this.vowels.includes(char)) count++;
    }

    return count;
  }
}
