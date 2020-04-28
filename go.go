package main

import (
  "fmt"
  "strconv"
)

/**
 * The total bottles on the wall.
 *
 * @var int
 */
var bottles = 99

/**
 * Check if there are any bottles siting on the wall.
 *
 * @return bool
 */
func hasBottles() bool {
  return (bottles > 0)
}

/**
 * Get the pluralized string of the current bottle on the wall.
 *
 * @param int bottle
 * @return string
 */
func pluralize(bottle int) string {
  if bottle > 1 || bottle == 0 {
    return "bottles"
  }

  return "bottle"
}

/**
 * Sing the song.
 */
func sing() {
  if (hasBottles()) {
    for bottle := bottles; bottle > 0; bottle-- {
      verse1(bottle)
      verse2(bottle)
      verse3()
      verse4(bottle)
    }
  } else {
    fmt.Println("There are currently no bottles on the wall.")
  }
}

/**
 * Get the first verse of the song.
 *
 * @param int bottle
 */
func verse1(bottle int) {
  fmt.Println(strconv.Itoa(bottle) + " " + pluralize(bottle) + " of beer on the wall")
}

/**
 * Get the second verse of the song.
 *
 * @param int bottle
 */
func verse2(bottle int) {
  fmt.Println(strconv.Itoa(bottle) + " " + pluralize(bottle) + " of beer")
}

/**
 * Get the third verse of the song.
 */
func verse3() {
  fmt.Println("Take 1 down and pass it around")
}

/**
 * Get the fourth verse of the song.
 *
 * @param int bottle
 */
func verse4(bottle int) {
  fmt.Println(strconv.Itoa(bottle - 1) + " " + pluralize(bottle - 1) + " of beer on the wall\n")
}

func main() {
  sing()
}
