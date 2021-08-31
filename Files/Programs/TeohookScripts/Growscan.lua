itemID = 336 --Item ID here

function Split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end
counts = 0
droppedshit = "add_spacer|small|"
for _, tile in pairs(getObjects()) do
if tile.id == itemID then
counts = counts + tile.count
end
end
countqwe = Split(counts, ".0")

droppedshit = droppedshit.."\nadd_label_with_icon|small|`o: "..getItemInfo(itemID).name..":"..countqwe[1].."``|left|"..tostring(itemID)
varlist = {}
varlist[0] = "OnDialogRequest"
varlist[1] = "set_default_color|`o\nadd_label_with_icon|big|Growscan``|left|6016\n"..droppedshit.."\nadd_quick_exit"
sendVarlist(varlist)
