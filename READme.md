-- är i tidiga stadier vid mina kod tester, Försöker vänja mig till Lua stilen. 

nästa steg kommer vara att få kontroll över cirkeln med hjälp av pilarna elr WASD.

Först ska jag kolla upp hur an kontrollerar ett objekt i rörelse och sedan försöka skriva in det så som jag vill ha det.

-- i snake koden tänte jag att jag skulle hitta hur man får objektet o röra sig åt det olika hållen. jag hittade koden,
Tail.x = 1
Tail.y = 1

Head.dx = 1
Head.dy = 0
Tail.dx = Head.dx
Tail.dy = Head.dy
local direction = "right"
local level = 1
local score = 0

som definierar ormen
och sedan hur den rör sig med koden

local function move()
  if game_map[ Tail.x ][ Tail.y ] == "right" then
    Tail.dx = 1
    Tail.dy = 0
  elseif game_map[ Tail.x ][ Tail.y ] == "left" then
    Tail.dx = -1
    Tail.dy = 0
  elseif game_map[ Tail.x ][ Tail.y ] == "up" then
    Tail.dx = 0
    Tail.dy = -1
  elseif game_map[ Tail.x ][ Tail.y ] == "down" then
    Tail.dx = 0
    Tail.dy = 1
  end

  därmed kan jag använda samma princip med min nuvarande cirkel och bestämma åt vilket håll den skall röra sig.
