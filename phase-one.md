Phase 1: Configuration Capture
==============================
- [x] Audit current development machine setup
- [x] Establish baseline configuration
- [ ] Create comprehensive dotfiles repository
- [ ] Document package dependencies and versions
## Baseline Configuration
> Comming Soon: A 'one-liner' located here will download and run the bootstrap.sh script, automating the entire process. Until then please advance to Step 1, below...
### Install Build Tools
- [ ] Step 1 - Install Xcode (Build Tools)
`sudo xcode-select --install`
- [ ] Step 2 - Accept Xcode License
`sudo xcodebuild -license accept`
### Install Homebrew
- [ ] Step 3 - Install Homebrew
  `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
      echo >> ~/.zprofile && \
      echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile eval "$(/opt/homebrew/bin/brew shellenv)"`
- [ ] Step 4 - Install Volta
  `brew install volta && echo 'export PATH="$HOME/.volta/bin:$PATH"' >> ~/.zshrc && source ~/.zshrc`
### Start automated install
- [ ] Step 5 - Install Package Managers & Programming Languages:
`curl -sSL https://raw.githubusercontent.com/jellylabs-ltd/lions-paw-darwin/main/step-five.sh | bash`

- [ ] ~~Utilities: brew install wget curl git~~
  - [ ] ~~Wget: brew install wget~~
  - [ ] ~~Curl: brew install curl~~
  - [ ] ~~Git: brew install git~~
- [ ] ~~Languages: brew install zig rust && brew install oven-sh/bun/bun~~
  - [ ] ~~Zig: brew install zig~~
  - [ ] ~~Rust: brew istall rust~~
  - [ ] ~~Bun: brew install oven-sh/bun/bun~~
- [ ] ~~Container Managers: brew install podman docker~~
  - [ ] ~~Podman: brew install podman~~
  - [ ] ~~Docker: brew install docker~~
- [ ] ~~DevTools: brew install warp protobuf iterm2~~
  - [ ] ~~Warp: brew install warp
  - [ ] ~~Protobuf: brew install protobuf~~
  - [ ] ~~Iterm2: brew install iterm2~~
- [ ] ~~Developer IDE's: brew install --cask zed visual-studio-code~~
  - [ ] ~~Zed: brew install --cask zed~~
  - [ ] ~~Visual Studio Code: brew install --cask visual-studio-code~~
- [ ] ~~Photography Tools: brew install darktable rawtherapee exiftool imagemagick && brew install --cask imageoptim~~
  - [ ] ~~Darktable: brew install darktable~~
  - [ ] ~~RawTherapee: brew install rawtherapee~~
  - [ ] ~~Exiftools: brew install exiftool~~
  - [ ] ~~Imageoptim: brew install imagemagick~~
  - [ ] ~~imagemagick: brew install --cask imageoptim~~
- [ ] ~~Panoramic Tools: brew install --cask hugin && brew install autopano-sift-c~~
  - [ ] ~~Panoramic Stitching Tools: brew install --cask hugin~~
  - [ ] ~~Panoramic Blending Tools: brew install autopano-sift-c~~
- [ ] ~~3D Modeling Tools: brew install --cask blender~~
- [ ] ~~Audio / Video Production Tools: brew install && brew libvpx ffmpeg --with-libvpx # this is for pano2vr video exports~~
- [ ] ~~Browsers: brew install firefox google-chrome~~
- [ ] ~~Ai Assistants:brew install --cask chatgpt~~
- [ ] ~~Knowelage Mapping Tools: brew install --cask obsidian~~
- [ ] ~~Audio Player: brew install hermes~~

- [ ] Step 6 - Install JS/ts Runtimes / Package Managers: ~~volta install yarn node pnpm~~
  - [ ] ~~volta install node~~
  - [ ] ~~volta istall yarn ~~
  - [ ] ~~volta install pnpm~~


### FUTURE AUTOMATION STRATAGY
Install Bun `curl -fsSL https://bun.sh/install | bash -s "bun-v1.2.15"` as the very first step and then use it to install everything and build and render a desktop application, cli, or localhost webapplication, which would improve usability substantially by providing the user with an interactive ui to visually follow thru and interact with the installation process.
