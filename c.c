#include <stdbool.h>
#include <stdio.h>

int verse1(int bottle);
int verse2(int bottle);
int verse3();
int verse4(int bottle);

/**
 * Check if there are any bottles siting on the wall.
 *
 * @return bool
 */
bool hasBottles(int bottles) {
    return (bottles > 0);
}

/**
 * Get the pluralized string of the current bottle on the wall.
 *
 * @param int bottle
 * @return string
 */
char* pluralize(int bottle) {
    return (bottle > 1 || bottle == 0) ? "bottles" : "bottle";
}

/**
 * Sing the song.
 *
 * @param int bottles
 */
int sing (int bottles) {
    if (hasBottles(bottles)) {
        for (int bottle = bottles; bottle >= 1; --bottle) {
            verse1(bottle);
            verse2(bottle);
            verse3();
            verse4(bottle);
        }
    } else {
        printf("There are currently no bottles on the wall.");
    }
}

/**
 * Get the first verse of the song.
 *
 * @param int bottle
 * @return int
 */
int verse1(int bottle) {
    char buffer[10];
    sprintf(buffer, "%d", bottle);
    printf("%s %s %s", buffer, pluralize(bottle), "of beer on the wall\n");
}

/**
 * Get the second verse of the song.
 *
 * @param int bottle
 * @return int
 */
int verse2(int bottle) {
    char buffer[10];
    sprintf(buffer, "%d", bottle);
    printf("%s %s %s", buffer, pluralize(bottle), "of beer\n");
}

/**
 * Get the third verse of the song.
 *
 * @return int
 */
int verse3() {
    printf("Take 1 down and pass it around\n");
}

/**
 * Get the fourth verse of the song.
 *
 * @param int bottle
 * @return int
 */
int verse4(int bottle) {
    char buffer[10];
    sprintf(buffer, "%d", bottle - 1);
    printf("%s %s %s", buffer, pluralize(bottle - 1), "of beer on the wall\n\n");
}

int main() {
    sing(99);
    return 0;
}
