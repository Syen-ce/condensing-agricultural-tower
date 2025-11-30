-- To add your plant to the table, paste in control

script.on_init(function()
  if remote.interfaces["condensing-tower"] then
    remote.call("condensing-tower", "add_plant", 
                "your-plant", "your-liquid", 1500, 0) -- plant, liquid, amount, temperature -- Use: ((liquid_amount * 23 avaliable tiles)/minutes of growing) / 60 seconds = amount liquid/second
  end
end)

-- (for when mods are added to existing saves)
script.on_configuration_changed(function()
  if remote.interfaces["condensing-tower"] then
    remote.call("condensing-tower", "add_plant", 
                "planetaris-cactus-plant", "water", 1500, 0)
  end
end)


-- Add locale line to the factoriopedia_description

if data.raw["agricultural-tower"] and data.raw["agricultural-tower"]["condensing-agricultural-tower"] then
  local tower = data.raw["agricultural-tower"]["condensing-agricultural-tower"]
  local desc = tower.factoriopedia_description
  
  if desc then
    table.insert(desc, {"factoriopedia-description.condensing-your-plant"})
  end
end

-- Structure for locale

condensing-your-plant=\nHarvesting [entity=your-plant] condenses fluid_amount [fluid=fluid_name] at temperature°C (fluid_amount/second)