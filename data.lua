-- data.lua

local fast_planner = {
  type = "deconstruction-item",
  name = "fast-deconstruct",
  icon = "__fast-deconstruct__/graphics/black-deconstruction-planner.png",
  icon_size = 64,
  flags = {"spawnable", "always-show", "excluded-from-character-lift-weight"},
  subgroup = "tool",
  order = "c[automated-construction]-b[fast-deconstruct]",
  stack_size = 1,
  
  inventory_move_sound = {
    filename = "__base__/sound/item/planner-inventory-move.ogg",
    volume = 0.7,
    aggregation = {max_count = 1, remove = true}
  },
  pick_sound = {
    filename = "__base__/sound/item/planner-inventory-pickup.ogg",
    volume = 0.7,
    aggregation = {max_count = 1, remove = true}
  },
  drop_sound = {
    filename = "__base__/sound/item/planner-inventory-move.ogg",
    volume = 0.7,
    aggregation = {max_count = 1, remove = true}
  },
  
  select = {
    border_color = {r = 0.05, g = 0.05, b = 0.05, a = 1.0}, -- Black selection box
    count_button_color = {r = 0.1, g = 0.1, b = 0.1},
    cursor_box_type = "not-allowed",
    mode = {"deconstruct", "any-entity", "any-tile"},
    ignore_cannot_select_tiles = true,
    started_sound = { filename = "__core__/sound/deconstruct-select-start.ogg" },
    ended_sound = { filename = "__core__/sound/deconstruct-select-end.ogg" }
  },
  
  super_forced_select = {
    border_color = {r = 0.05, g = 0.05, b = 0.05, a = 1.0},
    count_button_color = {r = 0.1, g = 0.1, b = 0.1},
    cursor_box_type = "not-allowed",
    mode = {"deconstruct", "any-entity", "any-tile"},
    ignore_cannot_select_tiles = true,
    started_sound = { filename = "__core__/sound/deconstruct-select-start.ogg" },
    ended_sound = { filename = "__core__/sound/deconstruct-select-end.ogg" }
  },
  
  alt_select = {
    border_color = {r = 0.4, g = 0.05, b = 0.05, a = 1.0}, -- Dark red selection box
    count_button_color = {r = 0.5, g = 0.1, b = 0.1},
    cursor_box_type = "not-allowed",
    mode = {"cancel-deconstruct", "any-entity"},
    started_sound = { filename = "__core__/sound/deconstruct-cancel-start.ogg" },
    ended_sound = { filename = "__core__/sound/deconstruct-cancel-end.ogg" }
  },
  
  open_sound = "__base__/sound/item-open.ogg",
  close_sound = "__base__/sound/item-close.ogg",
  skip_fog_of_war = true
}

local fast_planner_shortcut = {
  type = "shortcut",
  name = "give-fast-deconstruct",
  order = "b[blueprints]-i[fast-deconstruct]",
  action = "spawn-item",
  item_to_spawn = "fast-deconstruct",
  icon = "__fast-deconstruct__/graphics/shortcut-black-deconstruction-planner-x56.png",
  icon_size = 56,
  small_icon = "__fast-deconstruct__/graphics/shortcut-black-deconstruction-planner-x24.png",
  small_icon_size = 24
}

data:extend({
  fast_planner,
  fast_planner_shortcut
})
