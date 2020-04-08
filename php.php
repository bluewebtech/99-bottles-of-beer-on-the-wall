<?php

class Bottles {
    /**
     * The current bottle(s) on the wall.
     *
     * @var int
     */
    protected $bottle = 0;

    /**
     * The total bottles on the wall.
     *
     * @var int
     */
    protected $bottles = 0;

    /**
     * The class constructor.
     *
     * @param int $bottles
     */
    public function __construct($bottles)
    {
        $this->bottles = $bottles;
    }

    /**
     * Check if there are any bottles siting on the wall.
     *
     * @return bool
     */
    protected function hasBottles(): bool
    {
        return ($this->bottles > 0);
    }

    /**
     * Get the pluralized string of the current bottle on the wall.
     *
     * @param int $bottle
     * @return string
     */
    protected function pluralize(int $bottle): string
    {
        return 'bottle' . ($bottle > 1 || $bottle == 0 ? 's' : '');
    }

    /**
     * Sing the song.
     *
     * @return void
     */
    public function sing(): void
    {
        if ($this->hasBottles()) {
            for ($bottle = $this->bottles; $bottle > 0; $bottle--) {
                $this->bottle = $bottle;
                $this
                    ->verse1()
                    ->verse2()
                    ->verse3()
                    ->verse4()
                ;
            }
        } else {
            echo "There are currently no bottles on the wall.";
        }
    }

    /**
     * Get the first verse of the song.
     *
     * @return object
     */
    protected function verse1(): object
    {
        echo $this->bottle . ' ' . $this->pluralize($this->bottle) . " of beer on the wall\n";

        return $this;
    }

    /**
     * Get the second verse of the song.
     *
     * @return object
     */
    protected function verse2(): object
    {
        echo $this->bottle . ' ' . $this->pluralize($this->bottle) . " of beer\n";

        return $this;
    }

    /**
     * Get the third verse of the song.
     *
     * @return object
     */
    protected function verse3(): object
    {
        echo "Take 1 down and pass it around\n";

        return $this;
    }

    /**
     * Get the fourth verse of the song.
     *
     * @return object
     */
    protected function verse4(): object
    {
        echo ($this->bottle - 1) . ' ' . $this->pluralize($this->bottle - 1) . " of beer on the wall\n\n";

        return $this;
    }
}

$bottles = new Bottles(99);
$bottles->sing();
