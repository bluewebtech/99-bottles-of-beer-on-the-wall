class Bottles:
  """
  The current bottle(s) on the wall.
  @var: int
  """
  bottle = 0

  """
  The total bottles on the wall.
  @var: int
  """
  bottles = 0

  """
  The class constructor.
  @param: int bottles
  """
  def __init__(self, bottles):
    self.bottles = bottles

  """
  Check if there are any bottles siting on the wall.
  @return bool
  """
  def hasBottles(self):
    return (self.bottles > 0);

  """
  Get the pluralized string of the current bottle on the wall.
  @param: bottle int
  @return string
  """
  def pluralize(self, bottle):
    return ("bottle" + ('s' if bottle > 1 or bottle == 0 else ''));

  """
  Sing the song.
  @return void
  """
  def sing(self):
    if (self.hasBottles()):
      for bottle in range(self.bottles, 0, -1):
        self.bottle = bottle;
        self.verse1().verse2().verse3().verse4()
    else:
      print('There are currently no bottles on the wall.')

  """
  Get the first verse of the song.
  @return self
  """
  def verse1(self):
    print(str(self.bottle) + " " + self.pluralize(self.bottle) + " of beer on the wall")
    return self

  """
  Get the second verse of the song.
  @return self
  """
  def verse2(self):
    print(str(self.bottle) + " " + self.pluralize(self.bottle) + " of beer")
    return self

  """
  Get the third verse of the song.
  @return self
  """
  def verse3(self):
    print('Take 1 down and pass it around')
    return self;

  """
  Get the fourth verse of the song.
  @return self
  """
  def verse4(self):
    print(str(self.bottle - 1) + " " +  self.pluralize(self.bottle - 1) + " of beer on the wall\n")
    return self;

bottles = Bottles(99)
bottles.sing()
