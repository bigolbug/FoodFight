--Create a global variable, your program should only contain one. We will tuck all other variables into this one.
ff = {}

ff.vend = function()
end

ff.fight = function()
end

ff.formatPrint = function(text,opt1,opt2,pad)
    -- opt1 is for boarder
    -- pad is Padding
    local len = string.len(text)
    local width = len + pad*2 -2

    --Top of box
    for i = 1, opt2, 1 do
        io.write(" ")
    end

    io.write("+")
    for i = 1, width, 1 do
        io.write(opt1)
    end
    io.write("+\n")

    --Middle
    for i = 1, opt2, 1 do
        io.write(" ")
    end

    io.write("|")
    for i = 1, pad - 1, 1 do
        io.write(" ")
    end
    io.write(text)
    for i = 1, pad - 1, 1 do
        io.write(" ")
    end
    io.write("|\n")

    --Bottom
    for i = 1, opt2, 1 do
        io.write(" ")
    end
    io.write("+")
    for i = 1, width, 1 do
        io.write(opt1)
    end
    io.write("+\n")
    --print(len)
end

ff.tablePrint = function (tbl)
    print("testing")
    for key, value in ipairs(tbl) do
        if type(value) ~= "table" then
            io.write("\n",key,": ",value)
        else
            ff.tablePrint(value)
        end
        
    end
end

-- Intialize a few variables
io.write("\n\n")
ff.formatPrint("Welcome!","=",10,10)
io.write("\n\nPlease enter the name of the player: ")
ff.player = {name = io.read(), money = 10, box = {"Apple","Milk","Sandwich"}}
ff.tablePrint(ff.player)

--Main Loop
while true do
    print("Press enter to continue")
    io.read()
end
