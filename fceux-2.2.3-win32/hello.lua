while (true) do
    input_player = joypad.read(1);
    print(input_player);

    emu.frameadvance();

end;