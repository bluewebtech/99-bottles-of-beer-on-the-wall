class Bottles {
  /**
   * The current bottle(s) on the wall.
   *
   * @var {Int}
   */
  int bottle = 0;

  /**
   * The total bottles on the wall.
   *
   * @var {Int}
   */
  int bottles = 0;

  /**
   * The class constructor.
   *
   * @param {Int} bottles
   */
  Bottles(bottles) {
    this.bottles = bottles;
  }

  /**
   * Check if there are any bottles siting on the wall.
   *
   * @return {Boolean}
   */
  bool hasBottles() {
    return (this.bottles > 0);
  }

  /**
   * Get the pluralized string of the current bottle on the wall.
   *
   * @param {Number} bottle
   * @return {String}
   */
  String pluralize(int bottle) {
    return 'bottle' + (bottle > 1 || bottle == 0 ? 's' : '');
  }

  /**
   * Sing the song.
   *
   * @return {Void}
   */
  void sing() {
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
      print('There are currently no bottles on the wall.');
    }
  }

  /**
   * Get the first verse of the song.
   *
   * @return {Object}
   */
  verse1() {
    print(this.bottle.toString() + ' ' + this.pluralize(this.bottle) + ' of beer on the wall');

    return this;
  }

  /**
   * Get the second verse of the song.
   *
   * @return {Object}
   */
  verse2() {
    print(this.bottle.toString() + ' ' + this.pluralize(this.bottle) + ' of beer');

    return this;
  }

  /**
   * Get the third verse of the song.
   *
   * @return {Object}
   */
  verse3() {
    print('Take 1 down and pass it around');

    return this;
  }

  /**
   * Get the fourth verse of the song.
   *
   * @return {Object}
   */
  verse4() {
    print((this.bottle - 1).toString() + ' ' + this.pluralize(this.bottle - 1) + ' of beer on the wall\n');

    return this;
  }
}

void main() {
  var bottle = new Bottles(99);
  bottle.sing();
}
