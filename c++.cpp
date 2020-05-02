#include<iostream>

using namespace std;

class Bottles
{
    public:

    /**
     * The total bottles on the wall.
     *
     * @var int
     */
    int bottles = 0;

    /**
     * The total bottles on the wall.
     *
     * @var int
     */
    bool hasBottles() {
        return (bottles > 0);
    }

    /**
     * Get the pluralized string of the current bottle on the wall.
     *
     * @param int bottle
     * @return string
     */
    char const* pluralize(int bottle) {
        return (bottle > 1 || bottle == 0 ? "bottles" : "bottle");
    }

    /**
     * Sing the song.
     */
    void sing() {
        if (hasBottles()) {
            for (int bottle = bottles; bottle > 0; --bottle) {
                verse1(bottle);
                verse2(bottle);
                verse3();
                verse4(bottle);
            }
        } else {
            cout << "There are currently no bottles on the wall.\n";
        }
    }

    /**
     * Get the first verse of the song.
     *
     * @param int bottle
     */
    void verse1(int bottle) {
        cout << bottle << " " << pluralize(bottle) << " of beer on the wall\n";
    }

    /**
     * Get the second verse of the song.
     *
     * @param int bottle
     */
    void verse2(int bottle) {
        cout << bottle << " " << pluralize(bottle) << " of beer\n";
    }

    /**
     * Get the third verse of the song.
     */
    void verse3() {
        cout << "Take 1 down and pass it around\n";
    }

    /**
     * Get the fourth verse of the song.
     *
     * @param int bottle
     */
    void verse4(int bottle) {
        cout << (bottle - 1) << " " << pluralize(bottle - 1) << " of beer on the wall\n\n";
    }
};

int main()
{
    Bottles bottles;
    bottles.bottles = 99;
    bottles.sing();

    return 0;
}
