struct Bottles
    """
    ...
    The struct constructor.

    # Arguments
    - `bottles:: Int`: The total of bottles on the wall.
    ...
    """
    function Bottles(bottles:: Int)
        sing(bottles)
    end

    """
    ...
    Check if there are any bottles siting on the wall.

    # Arguments
    - `bottles:: Int`: The total of bottles on the wall.
    ...
    """
    function hasBottles(bottles)
        return (bottles > 0);
    end

    """
    ...
    Get the pluralized string of the current bottle on the wall.

    # Arguments
    - `bottle:: Int`: The current amount of bottles on the wall.
    ...
    """
    function pluralize(bottle:: Int)
        return string("bottle", (bottle > 1 || bottle == 0 ? "s" : ""))
    end

    """
    ...
    Sing the song.

    # Arguments
    - `bottles:: Int`: The total of bottles on the wall.
    ...
    """
    function sing(bottles:: Int)
        if hasBottles(bottles)
            for bottle in bottles:-1:1
                verse1(bottle)
                verse2(bottle)
                verse3()
                verse4(bottle)
            end
        else
            println("There are currently no bottles on the wall.")
        end
    end

    """
    ...
    Get the first verse of the song.

    # Arguments
    - `bottle:: Int`: The current amount of bottles on the wall.
    ...
    """
    function verse1(bottle:: Int)
        println("$bottle ", pluralize(bottle), " of beer on the wall");
    end

    """
    ...
    Get the second verse of the song.

    # Arguments
    - `bottle:: Int`: The current amount of bottles on the wall.
    ...
    """
    function verse2(bottle:: Int)
        println("$bottle ", pluralize(bottle), " of beer");
    end

    """
    ...
    Get the third verse of the song.
    ...
    """
    function verse3()
      println("Take 1 down and pass it around");
    end

    """
    ...
    Get the fourth verse of the song.

    # Arguments
    - `bottle:: Int`: The current amount of bottles on the wall.
    ...
    """
    function verse4(bottle:: Int)
      println("$(bottle - 1) ", pluralize(bottle - 1), " of beer on the wall\n");
    end
end

Bottles(99)
