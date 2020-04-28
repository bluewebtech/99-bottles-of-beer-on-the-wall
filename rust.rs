struct Bottles {
  bottles: i32
}

impl Bottles {
    ///
    /// Check if there are any bottles siting on the wall.
    ///
    /// @return bool
    ///
    fn has_bottles(&self) -> bool {
        return self.bottles > 0;
    }

    ///
    /// Get the pluralized string of the current bottle on the wall.
    ///
    /// @param i32 bottle
    /// @return &str
    ///
    fn pluralize(&self, bottle: i32) -> &str {
        let mut string = "bottle";

        if bottle > 1 || bottle == 0 {
            string = "bottles";
        }

        string
    }

    ///
    /// Sing the song.
    ///
    fn sing(&self) {
        if self.has_bottles() {
            for bottle in (1..=self.bottles).rev().step_by(1) {
                self.verse1(bottle);
                self.verse2(bottle);
                self.verse3();
                self.verse4(bottle);
            }
        } else {
            println!("{}", "There are currently no bottles on the wall.");
        }
    }

    ///
    /// Get the first verse of the song.
    ///
    /// @param i32 bottle
    ///
    fn verse1(&self, bottle: i32) {
        println!("{}", bottle.to_string() + " " + &self.pluralize(bottle) + " of beer on the wall");
    }

    ///
    /// Get the second verse of the song.
    ///
    /// @param i32 bottle
    ///
    fn verse2(&self, bottle: i32) {
        println!("{}", bottle.to_string() + " " + &self.pluralize(bottle) + " of beer");
    }

    ///
    /// Get the third verse of the song.
    ///
    fn verse3(&self) {
        println!("{}", "Take 1 down and pass it around");
    }

    ///
    /// Get the fourth verse of the song.
    ///
    /// @param i32 bottle
    ///
    fn verse4(&self, bottle: i32) {
        println!("{}", (bottle - 1).to_string() + " " + &self.pluralize(bottle - 1) + " of beer on the wall\n");
    }
}

fn main() {
    let bottles = Bottles{ bottles: 99 };
    bottles.sing();
}
