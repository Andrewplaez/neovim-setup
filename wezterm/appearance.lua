-- Merge these settings into your existing ~/.wezterm.lua.
-- This file is intentionally a snippet, not a standalone config.

config.window_background_opacity = 0.88
config.macos_window_background_blur = 18
config.text_background_opacity = 1.0

config.window_padding = {
  left = 14,
  right = 14,
  top = 12,
  bottom = 10,
}

-- Optional: uncomment and set a real image path for a wallpaper.
-- WezTerm renders the image; Neovim itself does not render background images.
--
-- config.window_background_image = "/absolute/path/to/wallpaper.png"
-- config.window_background_image_hsb = {
--   brightness = 0.16,
--   hue = 1.0,
--   saturation = 0.75,
-- }
