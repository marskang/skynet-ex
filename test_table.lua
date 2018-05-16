ids = {}

table.insert(ids, 2)
table.insert(ids, 3)
table.insert(ids, 4)
table.insert(ids, 5)
table.insert(ids, 6)

for key, val in ipairs(ids) do
    print(key, val)
end


function table.removeItem(list, item, removeAll)
    local rmCount = 0
    for i = 1, #list do
        if list[i - rmCount] == item then
            table.remove(list, i - rmCount)
            if removeAll then
                rmCount = rmCount + 1
            else
                break
            end
        end
    end
end

print('======================')

table.removeItem(ids, 3)

for key, val in ipairs(ids) do
    print(key, val)
end

