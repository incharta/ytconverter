# ytconverter

This is a simple Bash script that downloads videos or playlists from YouTube using [yt-dlp](https://github.com/yt-dlp/yt-dlp), a powerful video downloader. The script checks if `yt-dlp` is installed and downloads it automatically if necessary. It also validates user input to ensure proper URLs are provided.

## Features

- Automatically installs `yt-dlp` if it is not installed on your system.
- Downloads YouTube videos or playlists with ease.
- Supports video output with the original video title as the file name.
- URL validation to ensure proper format.

## Requirements

- Bash (Linux or macOS)
- Python 3
- `curl` (for installation)
- Internet connection to download `yt-dlp`

## Installation

Clone this repository or download the script manually:
   ```bash
   git clone https://github.com/incharta/ytconverter
   cd ytconverter
   chmod +x ytc.sh
   ./ytc.sh
   ```

### Contributing

Contributions are welcome! If you find any issues or want to add new features, feel free to open a pull request or file an issue.
