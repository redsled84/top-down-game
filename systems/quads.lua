local Quads = {}

function Quads:loadQuadInfo(tileW, tileH, tileswide, tileshigh)
    local quadInfo = {}
    local x, y = 128, 0
    for i=1, tileswide do
        for j=1, tileshigh do
            table.insert(quadInfo, {x = x, y = y})
            if j % tileswide == 0 then
                y = y + tileH
            else
                x = x + tileW
            end
        end
    end

    return quadInfo
end

function Quads:loadQuads(quadInfo, tileW, tileH, tilesetW, tilesetH)
    local quads = {}
    for i=1, #quadInfo do
        local info = quadInfo[i]
        quads[i] = love.graphics.newQuad(info.x, info.y, 
            tileW, tileH, tilesetW, tilesetH)
    end

    return quads
end

return Quads