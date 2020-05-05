public class Main {
    /**
     * The current bottle(s) on the wall.
     *
     * @var {Int}
     */
    int bottles = 0;

    /**
     * Check if there are any bottles siting on the wall.
     *
     * @return {Boolean}
     */
    protected boolean hasBottles()
    {
        return (this.bottles > 0);
    }

    /**
     * Get the pluralized string of the current bottle on the wall.
     *
     * @param {Int} bottle
     * @return {String}
     */
    protected String pluralize(int bottle)
    {
        return ("bottle" + (bottle > 1 || bottle == 0 ? "s" : ""));
    }

   /**
    * Sing the song.
    *
    * @param {Int} bottles
    * @return {Void}
    */
    public void sing(int bottles)
    {
        this.bottles = bottles;

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
            System.out.println("There are currently no bottles on the wall.");
        }
    }

    /**
     * Get the first verse of the song.
     *
     * @param {Int} bottle
     * @return Main
     */
    protected Main verse1(int bottle)
    {
        System.out.println(bottle + " " + this.pluralize(bottle) + " of beer on the wall");

        return this;
    }

    /**
     * Get the second verse of the song.
     *
     * @param {Int} bottle
     * @return Main
     */
    protected Main verse2(int bottle)
    {
        System.out.println(bottle + " " + this.pluralize(bottle) + " of beer");

        return this;
    }

    /**
     * Get the third verse of the song.
     *
     * @return Main
     */
    protected Main verse3()
    {
        System.out.println("Take 1 down and pass it around");

        return this;
    }

    /**
     * Get the fourth verse of the song.
     *
     * @param {Int} bottle
     * @return Main
     */
    protected Main verse4(int bottle)
    {
        System.out.println(bottle - 1 + " " + this.pluralize(bottle - 1) + " of beer on the wall\n");

        return this;
    }

    /**
     * The main method.
     *
     * @param {String[]} args
     * @return Void
     */
    public static void main(String[] args)
    {
        new Main().sing(99);
    }
}
