-- Re-lock lignumis because it looks bad
local FixTechUnlocks = {}

FixTechUnlocks.on_init = function()
  if game.tick > 0 then return end
  local force = game.forces.player

  if not force.technologies["planet-discovery-nauvis"].researched then
    force.technologies["planet-discovery-lignumis"].researched = false
  end
end

return FixTechUnlocks