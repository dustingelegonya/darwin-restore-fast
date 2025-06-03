Phase 1: Configuration Capture
==============================
- [x] Audit current development machine setup
- [x] Establish baseline configuration
- [ ] Create comprehensive dotfiles repository
- [ ] Document package dependencies and versions
## Baseline Configuration
```
Comming Soon: A 'one-liner' located here will download and run the bootstrap.sh script, automating the entire process. Until then please advance to Step 1, below...
```


- [ ] Step 1 - Install Xcode (Build Tools)
```
sudo xcode-select --install
```

- [ ] Step 2 - Accept Xcode License
```
sudo xcodebuild -license accept
```

- [ ] Step 3 - Install Homebrew (the following is all a single instruction set, paste all three lines as one single unified statement)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
  echo >> ~/.zprofile && \
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile eval "$(/opt/homebrew/bin/brew shellenv)"
```

- [ ] Step 4 - Install Volta
```
brew install volta && echo 'export PATH="$HOME/.volta/bin:$PATH"' >> ~/.zshrc && source ~/.zshrc
```

- [ ] Step 5 - Initiate the automated install phase:
Paste the following line into your terminal:
```
curl -sSL https://raw.githubusercontent.com/jellylabs-ltd/the-lions-paw-reanimation-and-reconfiguration-system-for-darwin/blob/main/step-five.sh | bash
```


- [ ] Step 6 - Finish manual App Store installations using this checklist as a reference: [Manual Installation Checklist](https://github.com/jellylabs-ltd/the-lions-paw-reanimation-and-reconfiguration-system-for-darwin/blob/main/manual-install.md)
