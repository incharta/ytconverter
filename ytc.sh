#!/bin/bash

# Function to check if yt-dlp is installed, and install it if not
check_yt_dlp() {
    # Check if yt-dlp is available
    if ! command -v yt-dlp &> /dev/null; then
        echo "yt-dlp not found, installing..."
        
        # Update package list and install required packages
        sudo apt update
        sudo apt install -y python3 python3-pip curl
        
        # Install yt-dlp via pip
        pip3 install yt-dlp
    else
        echo "yt-dlp is already installed."
    fi
}

# Function to download a YouTube video
download_video() {
    # Prompt the user for the YouTube video/playlist URL
    read -p "Enter the YouTube video or playlist URL: " url
    
    # Check if the URL is empty
    if [[ -z "$url" ]]; then
        echo "URL cannot be empty. Please try again."
        exit 1
    fi

    # Check if the URL is valid (starts with http or https)
    if [[ ! "$url" =~ ^https?:// ]]; then
        echo "Invalid URL. Ensure it starts with 'http://' or 'https://'."
        exit 1
    fi

    # Download the video using yt-dlp and name the file with the video title
    yt-dlp "$url" -o "%(title)s.%(ext)s"
    
    # Check if the download was successful
    if [ $? -eq 0 ]; then
        echo "Download completed successfully!"
    else
        echo "An error occurred during download. Check the URL and try again."
    fi
}

# Main function
main() {
    check_yt_dlp  # Check and install yt-dlp if necessary
    download_video  # Perform video download
}

# Execute the main function
main
