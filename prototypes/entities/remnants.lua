data:extend({
  {
    type = "corpse",
    name = "condensing-agricultural-tower-remnants",
    icon = "__condensing-agricultural-tower__/graphics/icons/condensing-agricultural-tower.png",
    flags = {"placeable-neutral", "not-on-map"},
    hidden_in_factoriopedia = true,
    subgroup = "agriculture-remnants",
    order = "a[agricultural-tower]-b",
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    tile_width = 3,
    tile_height = 3,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    expires = false,
    final_render_layer = "remnants",
    remove_on_tile_placement = false,
    animation =
    {
      filename = "__condensing-agricultural-tower__/graphics/entity/condensing-agricultural-tower/condensing-agricultural-tower-remnants.png",
      line_length = 1,
      width = 250,
      height = 250,
      frame_count = 1,
      direction_count = 1,
      shift = util.by_pixel( 0, 0),
      scale = 0.5
    }
  },
})