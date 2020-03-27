conky.config = {
    -- Run settings
    total_run_times = 0,
    update_interval = 1,

    -- Positioning
    alignment = 'bottom_left',
    gap_x = 50,
    gap_y = 125,
    minimum_width = 125,
    maximum_width = 125,
    minimum_height = 125,

    -- Draw settings
    double_buffer = true,
    draw_shades = false,
    draw_blended = false,

    -- Compositor settings
    own_window = true,
    own_window_argb_visual = true,
    own_window_argb_value = 0,
    own_window_transparent = true,
    own_window_class = 'conky-semi',
    own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
    own_window_type = 'desktop'
};

conky.text = [[
${exec echo $PWD}
${if_running spotify}${exec sh "$HOME/.config/conky/now-clocking/scripts/spotifyart"}
${image ~/Pictures/npart.jpg -p 0,0 -s 125x125 -n}
${endif}

${if_running cmus}
${exec sh "$HOME/.config/conky/now-clocking/scripts/cmusart"}
${image ~/Pictures/npart2.jpg -p 0,0 -s 125x125 -n}
${endif}
]];
