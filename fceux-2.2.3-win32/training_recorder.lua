file = io.open("../training_data/inputs.txt", "w")
file:write("A, left, right, up, down, B, start, select", "\n")
frame = 0
outDir = ".\\../training_data/images\\"

while (true) do
    print(_VERSION)
    def add_one(num):
        return num + 1
    lua_func = lua.eval('function(num, py_func) return py_func(num) end')
    lua_func(48, add_one)
    if frame % 4 == 0 then
        input_player = joypad.read(1)
        --file:write(tostring((input_player["A"])) .. "," .. tostring((input_player["left"])) .. "," .. tostring((input_player["right"])) .. ","  .. tostring((input_player["up"])) .. ","  .. tostring((input_player["down"])) .. ","  .. tostring((input_player["B"])) .. ","  .. tostring((input_player["start"])) .. ","  .. tostring((input_player["select"])),"\n")
        print(input_player)
        --gui.savescreenshotas("frame_nr" .. tostring(frame) .. ".png", "../training_data/", 0)
        --gui.savescreenshotas(string.format("%s\\frame%d.png", outDir, frame))
        print(input_player)
    end
    frame = frame + 1;
    emu.frameadvance()

end;

local handle = io.popen(command)
local result = handle:read("*a")

-- https://github.com/ppaquette/gym-super-mario/tree/master/ppaquette_gym_super_mario
-- https://github.com/GuanyaShi/Training-DQN-to-play-Super-Mario-Bros/blob/master/Final_Report.pdf