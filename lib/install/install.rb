BOOT_PATH = Rails.root.join("config/boot.rb")

say "Load `rails routes` patch on boot"
append_to_file BOOT_PATH.to_s, "require 'colorized_routes/patches/boot'"
