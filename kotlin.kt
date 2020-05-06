class Bottles {
    /**
     * The current bottle(s) on the wall.
     *
     * @var {Int}
     */
    var bottles: Int = 0

    /**
     * The class constructor.
     *
     * @param int $bottles
     */
    constructor(bottles: Int) {
        this.bottles = bottles
    }

    /**
     * Check if there are any bottles siting on the wall.
     *
     * @return {Boolean}
     */
    private fun hasBottles(): Boolean {
        return (this.bottles > 0)
    }

    /**
     * Get the pluralized string of the current bottle on the wall.
     *
     * @param {Int} bottle
     * @return {String}
     */
    private fun pluralize(bottle: Int): String {
        return when(bottle > 1 || bottle == 0) {
            true -> "bottles"
            false -> "bottle"
        }
    }

    /**
     * Sing the song.
     *
     * @return {Void}
     */
    fun sing() {
        if (this.hasBottles()) {
            for (bottle in this.bottles downTo 1) {
                this
                  .verse1(bottle)
                  .verse2(bottle)
                  .verse3()
                  .verse4(bottle)
            }
        } else {
            println("There are currently no bottles on the wall.")
        }
    }

    /**
     * Get the first verse of the song.
     *
     * @param {Int} bottle
     * @return Bottles
     */
    private fun verse1(bottle: Int): Bottles {
        println(bottle.toString() + " " + this.pluralize(bottle) + " of beer on the wall")

        return this
    }

    /**
     * Get the second verse of the song.
     *
     * @param {Int} bottle
     * @return Bottles
     */
    private fun verse2(bottle: Int): Bottles {
        println(bottle.toString() + " " + this.pluralize(bottle) + " of beer")

        return this
    }

    /**
     * Get the third verse of the song.
     *
     * @return Main
     */
    private fun verse3(): Bottles {
        println("Take 1 down and pass it around")

        return this
    }

    /**
     * Get the fourth verse of the song.
     *
     * @param {Int} bottle
     * @return Main
     */
    private fun verse4(bottle: Int): Bottles {
        println((bottle - 1).toString() + " " + this.pluralize(bottle - 1) + " of beer on the wall\n")

        return this
    }
}

/**
 * The main method.
 *
 * @param {String[]} args
 * @return Void
 */
fun main(args: Array<String>) {
    val bottles = Bottles(99)
    bottles.sing()
}
