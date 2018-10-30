file = io.open("../training_data/inputs.txt", "w")
file:write("A, left, right, up, down, B, start, select", "\n")
frame = 0
outDir = ".\\../training_data/images\\"
a = memory.writebyte(0x2006, 0x20)
b = memory.writebyte(0x2006, 0x00)
print(a, b)
print("viewBox")
init = false

while (true) do
    if init == false then
        memory.writebyte(0x000773, 0x02)
        init = true
    end

    

    if frame % 4 == 0 then
        input_player = joypad.read(1)
        --file:write(tostring((input_player["A"])) .. "," .. tostring((input_player["left"])) .. "," .. tostring((input_player["right"])) .. ","  .. tostring((input_player["up"])) .. ","  .. tostring((input_player["down"])) .. ","  .. tostring((input_player["B"])) .. ","  .. tostring((input_player["start"])) .. ","  .. tostring((input_player["select"])),"\n")
        --print(input_player)
        --gui.savescreenshotas("frame_nr" .. tostring(frame) .. ".png", "../training_data/", 0)
        --gui.savescreenshotas(string.format("%s\\frame%d.png", outDir, frame))
        --print(input_player)
    end
    frame = frame + 1;
    emu.frameadvance()

end;
