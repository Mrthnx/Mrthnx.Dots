-- Lua
return {
  "SergioRibera/codeshot.nvim",
  config = function()
    require("codeshot").setup({
      theme = "base16-ocean.dark",
      copy = "%c | xclip -selection clipboard -target image/png",
      padding_x = 80,
      padding_y = 100,
      author = "Mrthnx",
      use_current_theme = false,
    })

    -- Crear un comando "VisualCodeShot" para el modo visual

    vim.api.nvim_create_user_command("VisualCodeShot", function()
      vim.wo.relativenumber = false
      -- Obtener las posiciones de las líneas seleccionadas en modo visual
      local start_pos = vim.fn.getpos("'<")
      local end_pos = vim.fn.getpos("'>")

      -- Extraer las líneas de inicio y fin
      local start_line = start_pos[2]
      local end_line = end_pos[2]

      -- Crear el rango en formato 'start..end'
      local range
      if start_line and end_line then
        range = string.format("%d..%d", start_line, end_line)
      else
        range = ".." -- En caso de que no haya rango definido (todo el archivo)
      end

      -- Obtener las líneas seleccionadas como texto
      local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)

      -- Solicitar al usuario las líneas a resaltar
      local hi_input = vim.fn.input("Líneas a resaltar (separadas por comas): ")

      -- Llamar a la función `codeshot.current` con el rango y las líneas a resaltar
      local codeshot = require("codeshot")
      codeshot.current(range, hi_input)

      -- Mensaje de confirmación
      print("¡Captura creada para el rango: " .. range .. "!")

      vim.wo.relativenumber = true
    end, { range = true })
  end,
}
