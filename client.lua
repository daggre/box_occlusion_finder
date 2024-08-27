RegisterCommand("boxoccluderfind", function(source, args, rawCommand)
    local numBOs = args[1] and tonumber(args[1]) or 1
    local position = GetEntityCoords(PlayerPedId())
    local nearest = {}

    for _, boxOcclusionData in pairs(BoxOccluders) do
        local boPos = boxOcclusionData.pos
        local dist = #(position - boPos)
        if #nearest < 10 or dist < nearest[10].dist then
            local boOut = {
                dist = dist,
                filename = boxOcclusionData.filename,
                position = boxOcclusionData.pos,
            }
            if #nearest == 0 then
                table.insert(nearest, boOut);
            else
                for index, boData in ipairs(nearest) do
                    if dist < boData.dist then
                        table.insert(nearest, index, boOut);
                        break
                    end
                end
            end
            if #nearest > 10 then nearest[11] = nil; end
        end
    end

    if nearest and next(nearest) == nil then print("Failed to find BoxOcclusion"); end
    for index, bo in ipairs(nearest) do
        if index > numBOs then break; end
        print(("%sfile=%s dist=%.2f <position x=\"%s\" y=\"%s\" z=\"%s\" />"):format(
            numBOs > 1 and tostring(index)..": " or "",
            bo.filename,
            bo.dist,
            bo.position.x,
            bo.position.y,
            bo.position.z
        ))
    end
end, false)
