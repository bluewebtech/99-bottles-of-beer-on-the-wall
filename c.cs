using System;

class Bottles
{
    /**
     * The current bottle(s) on the wall.
     *
     * @var {Int}
     */
    public int bottles { get; set; }

    /**
     * Check if there are any bottles siting on the wall.
     *
     * @return {Boolean}
     */
    private bool hasBottles()
    {
        return (bottles > 0);
    }

    /**
     * Get the pluralized string of the current bottle on the wall.
     *
     * @param {Int} bottle
     * @return {String}
     */
    private string pluralize(int bottle)
    {
        return ("bottle" + (bottle > 1 || bottle == 0 ? "s" : ""));
    }

   /**
    * Sing the song.
    *
    * @return {Void}
    */
    public void sing()
    {
        if (hasBottles())
        {
            for (int bottle = bottles; bottle > 0; bottle--) {
                verse1(bottle).
                verse2(bottle).
                verse3().
                verse4(bottle);
            }
        } else
        {
            Console.WriteLine("There are currently no bottles on the wall.");
        }
    }

    /**
     * Get the first verse of the song.
     *
     * @param {Int} bottle
     * @return {Bottles}
     */
    private Bottles verse1(int bottle)
    {
        Console.WriteLine(bottle + " " + pluralize(bottle) + " of beer on the wall");

        return this;
    }

    /**
     * Get the second verse of the song.
     *
     * @param {Int} bottle
     * @return {Bottles}
     */
    private Bottles verse2(int bottle)
    {
        Console.WriteLine(bottle + " " + pluralize(bottle) + " of beer");

        return this;
    }

    /**
     * Get the third verse of the song.
     *
     * @return {Bottles}
     */
    private Bottles verse3()
    {
        Console.WriteLine("Take 1 down and pass it around");

        return this;
    }

    /**
     * Get the fourth verse of the song.
     *
     * @param {Int} bottle
     * @return {Bottles}
     */
    private Bottles verse4(int bottle)
    {
        Console.WriteLine(bottle - 1 + " " + pluralize(bottle - 1) + " of beer on the wall\n");

        return this;
    }
}

class Program
{
    /**
     * The main method.
     *
     * @param {String[]} args
     * @return Void
     */
    static void Main(string[] args)
    {
        Bottles bottles = new Bottles();
        bottles.bottles = 99;
        bottles.sing();
    }
}
