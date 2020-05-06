class Bottles
    # The class constructor.
    # @param int $bottles
    def initialize(bottles)
        @bottles = bottles
    end

    # Check if there are any bottles siting on the wall.
    # @return {Boolean}
    def hasBottles
        return (@bottles > 0)
    end

    # Get the pluralized string of the current bottle on the wall.
    # @param {Int} bottle
    # @return {String}
    def pluralize(bottle)
        "bottle#{bottle > 1 || bottle == 0 ? "s" : ""}"
    end

    # Sing the song.
    # @return {Void}
    def sing
        if hasBottles()
            for bottle in (@bottles).downto(1)
                verse1(bottle).
                verse2(bottle).
                verse3.
                verse4(bottle)
            end
        else
            puts "There are currently no bottles on the wall."
        end
    end

    # Get the first verse of the song.
    # @param {Int} bottle
    # @return Bottles
    def verse1(bottle)
        puts "#{bottle} #{pluralize(bottle)} of beer on the wall"

        return self
    end

    # Get the second verse of the song.
    # @param {Int} bottle
    # @return Bottles
    def verse2(bottle)
        puts "#{bottle} #{pluralize(bottle)} of beer"

        return self
    end

    # Get the third verse of the song.
    def verse3
        puts "Take 1 down and pass it around"

        return self
    end

    # Get the fourth verse of the song.
    # @param {Int} bottle
    # @return Bottles
    def verse4(bottle)
        puts "#{bottle - 1} #{pluralize(bottle - 1)} of beer on the wall\n\n"

        return self
    end
end

bottles = Bottles.new(99)
bottles.sing
