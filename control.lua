-- control.lua

local function on_deconstructed(event)
  if event.alt then return end -- If it's alt (Shift-select to cancel), do not destroy!
  
  local player = game.get_player(event.player_index)
  if not player then return end
  
  -- Check if they are holding our planner
  local item = player.cursor_stack
  local is_black_planner = false
  if item and item.valid_for_read and item.name == "fast-deconstruct" then
    is_black_planner = true
  end
  
  if is_black_planner then
    local surface = event.surface
    local area = event.area
    local force = player.force
    
    -- Find all entities marked for deconstruction in this area
    local entities = surface.find_entities_filtered{
      area = area,
      to_be_deconstructed = true
    }
    
    for _, entity in ipairs(entities) do
      if entity.valid then
        local etype = entity.type
        -- Do not destroy characters (players)
        if etype == "character" or etype == "player" then
          -- Do nothing
        -- Do not destroy cliffs, trees, or space platform hubs
        elseif etype == "cliff" or etype == "tree" or etype == "space-platform-hub" then
          entity.cancel_deconstruction(force, player)
        else
          entity.destroy()
        end
      end
    end
  end
end

script.on_event(defines.events.on_player_deconstructed_area, on_deconstructed)
