import re
import argparse


COLOR_MAPPING = {
    "11111b": "000000", # crust
    "181825": "0b0b0b", # mantle
    "1e1e2e": "161616", # base
    "313244": "262626", # surface0
    "45475a": "393939", # surface1
    "585b70": "525252", # surface2
    "6c7086": "6f6f6f", # overaly0
    "7f849c": "8d8d8d", # overlay1
    "9399b2": "a8a8a8", # overlay2
    "a6adc8": "c6c6c6", # subtext0
    "bac2de": "e0e0e0", # subtext1
    "cdd6f4": "f4f4f4", # text
}


def replace_color_codes(file_path):
    with open(file_path, 'r') as file:
        content = file.read()

    for old_color, new_color in COLOR_MAPPING.items():
        pattern = re.compile(re.escape(old_color), re.IGNORECASE)
        content = pattern.sub(new_color, content)

    with open(file_path, 'w') as file:
        file.write(content)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Custom patcher for Catppuccin themes")
    parser.add_argument(
        "theme_path",
        type=str,
        help="Path to the theme file to patch",
    )
    args = parser.parse_args()

    replace_color_codes(args.theme_path)
