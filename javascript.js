class Bottles {
  /**
   * The class constructor.
   *
   * @param {Number} bottles
   */
  constructor(bottles) {
    this.bottle = 0;
    this.bottles = bottles;
  }

  /**
   * Check if there are any bottles siting on the wall.
   *
   * @return {Boolean}
   */
  hasBottles() {
    return (this.bottles > 0);
  }

  /**
   * Get the pluralized string of the current bottle on the wall.
   *
   * @param {Number} bottle
   * @return {String}
   */
  pluralize(bottle) {
    return `bottle${(bottle > 1 || bottle == 0 ? 's' : '')}`;
  }

  /**
   * Sing the song.
   *
   * @return {Void}
   */
  sing() {
    if (this.hasBottles()) {
      for (var bottle = this.bottles; bottle > 0; bottle--) {
        this.bottle = bottle;
        this
          .verse1()
          .verse2()
          .verse3()
          .verse4()
        ;
      }
    } else {
      console.log('There are currently no bottles on the wall.');
    }
  }

  /**
   * Get the first verse of the song.
   *
   * @return {Object}
   */
  verse1() {
    console.log(`${this.bottle} ${this.pluralize(this.bottle)} of beer on the wall`);

    return this;
  }

  /**
   * Get the second verse of the song.
   *
   * @return {Object}
   */
  verse2() {
    console.log(`${this.bottle} ${this.pluralize(this.bottle)} of beer`);

    return this;
  }

  /**
   * Get the third verse of the song.
   *
   * @return {Object}
   */
  verse3() {
    console.log('Take 1 down and pass it around');

    return this;
  }

  /**
   * Get the fourth verse of the song.
   *
   * @return {Object}
   */
  verse4() {
    console.log(`${this.bottle - 1} ${this.pluralize(this.bottle - 1)} of beer on the wall\n`);

    return this;
  }
}

const bottle = new Bottles(99);
bottle.sing();
