## Overview
This is basically [Bedrock Capistrano](https://github.com/roots/bedrock-capistrano) commit 01a2657 with the addition of some files and settings to make it work with WP-CLI. With some commonly used settings for a multi-site staging server and a shared hosting server (GoDaddy, etc.)

## Installation

1. Create a new folder for the project
2. Follow the instructions on the Bedrock page to install the theme
3. Copy the files from the this repo over to your project
4. Edit your config/deploy/ configs to set the roles/servers and connection options.
5. Replace your .gitignore with our example.gitignore
6. Then from the root directory run bundle
6. And you're good to go!