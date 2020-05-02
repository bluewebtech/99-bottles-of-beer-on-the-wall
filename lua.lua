--- The total bottles on the wall.
-- @var int
Bottles = {bottles = 0}

--- The class constructor.
-- @param {Int} bottles
function Bottles:new(o, bottles)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  bottles = bottles or 0
  self.bottles = bottles;
  return o
end

--- Check if there are any bottles siting on the wall.
-- @return bool
function Bottles:hasBottles()
  return (self.bottles > 0)
end

--- Get the pluralized string of the current bottle on the wall.
-- @param int bottle
-- @return string
function Bottles:pluralize(bottle)
  if bottle > 1 or bottle == 0 then
    return "bottles"
  else
    return "bottle"
  end
end

--- Sing the song.
function Bottles:sing()
  if self:hasBottles() then
    for bottle = self.bottles, 1, -1
    do
      self:verse1(bottle)
      self:verse2(bottle)
      self:verse3()
      self:verse4(bottle)
    end
  else
    print("There are currently no bottles on the wall.")
  end
end

--- Get the first verse of the song.
-- @param int bottle
function Bottles:verse1(bottle)
  print(tostring(bottle) .. " " .. self:pluralize(bottle) .. " of beer on the wall")
end

--- Get the second verse of the song.
-- @param int bottle
function Bottles:verse2(bottle)
  print(tostring(bottle) .. " " .. self:pluralize(bottle) .. " of beer")
end

--- Get the third verse of the song.
function Bottles:verse3()
  print("Take 1 down and pass it around")
end

--- Get the fourth verse of the song.
-- @param int bottle
function Bottles:verse4(bottle)
  print(tostring(bottle - 1) .. " " .. self:pluralize(bottle - 1) .. " of beer on the wall\n")
end

bottles = Bottles:new(nil, 99)
bottles:sing()
