if GetResourceState('ox_target') ~= 'started' then return end

local ox_target = exports.ox_target

Target = {
    addLocalEntity = function(entities, options)
        ox_target:addLocalEntity(entities, options)
    end,

    addModel = function(models, options)
        ox_target:addModel(models, options)
    end,

    addBoxZone = function(name, coords, size, heading, options)
        ox_target:addBoxZone({
            coords = coords,
            size = size,
            rotation = heading,
            debug = Cfg.Debug,
            options = options
        })
    end
}