class Bottles {
    /**
     * The current bottle(s) on the wall.
     *
     * @var {Int}
     */
    private int bottles;

    /**
     * The class constructor.
     *
     * @param int $bottles
     */
    Bottles(int bottles) {
        this.bottles = bottles;
    }

    /**
     * Check if there are any bottles siting on the wall.
     *
     * @return {Boolean}
     */
    private boolean hasBottles() {
        return (this.bottles > 0);
    }

    /**
     * Get the pluralized string of the current bottle on the wall.
     *
     * @param {Int} bottle
     * @return {String}
     */
    private String pluralize(int bottle) {
        return ("bottle" + (bottle > 1 || bottle == 0 ? "s" : ""));
    }

    /**
    * Sing the song.
    *
    * @return {Void}
    */
    void sing() {
        if (this.hasBottles()) {
            for (int bottle = this.bottles; bottle > 0; bottle--) {
                this
                  .verse1(bottle)
                  .verse2(bottle)
                  .verse3()
                  .verse4(bottle)
                ;
            }
        } else {
            println("There are currently no bottles on the wall.");
        }
    }

    /**
     * Get the first verse of the song.
     *
     * @param {Int} bottle
     * @return Bottles
     */
    private Bottles verse1(int bottle) {
        println(bottle + " " + this.pluralize(bottle) + " of beer on the wall");

        return this;
    }

    /**
     * Get the second verse of the song.
     *
     * @param {Int} bottle
     * @return Main
     */
    private Bottles verse2(int bottle) {
        println(bottle + " " + this.pluralize(bottle) + " of beer");

        return this;
    }

    /**
     * Get the third verse of the song.
     *
     * @return Main
     */
    private Bottles verse3() {
        println("Take 1 down and pass it around");

        return this;
    }

    /**
     * Get the fourth verse of the song.
     *
     * @param {Int} bottle
     * @return Main
     */
    private Bottles verse4(int bottle) {
        println(bottle - 1 + " " + this.pluralize(bottle - 1) + " of beer on the wall\n");

        return this;
    }

    /**
     * The main method.
     *
     * @param {String[]} args
     * @return Void
     */
    static void main(String[] args) {
        Bottles bottles = new Bottles(99);
        bottles.sing();
    }
}
