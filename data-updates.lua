-- update vanilla plants

if settings.startup["enable-tree-condensing-water"].value == true then
table.insert(data.raw["plant"]["tree-plant"].minable.results,
      { type = "fluid", name = "water", amount = 2000}
)
end

if settings.startup["enable-yumako-condensing-steam"].value == true then
table.insert(data.raw["plant"]["yumako-tree"].minable.results,
      { type = "fluid", name = "steam", amount = 810, temperature = 165}
)
end

if settings.startup["enable-jellynut-condensing-lubricant"].value == true then
table.insert(data.raw["plant"]["jellystem"].minable.results,
      { type = "fluid", name = "lubricant", amount = 420}
)
end
