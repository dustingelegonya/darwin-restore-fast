#!/bin/bash

# The Lion's Paw Phased Rapid Reanimation System for Darwin
# Disaster Recovery Automation Script
# Version: 1.0.0

set -euo pipefail

# Configuration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_DIR="$HOME/.lions-paw/logs"
CONFIG_DIR="$SCRIPT_DIR/config"
PHASES_DIR="$SCRIPT_DIR/phases"
LIB_DIR="$SCRIPT_DIR/lib"

# Colors for output (dark theme optimized)
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Create necessary directories
mkdir -p "$LOG_DIR"

# Source utilities
source "$LIB_DIR/logger.sh"
source "$LIB_DIR/network.sh"
source "$LIB_DIR/verification.sh"

# Main execution function
main() {
    log_info "🦁 Starting Lion's Paw Reanimation System"
    log_info "Timestamp: $(date)"
    log_info "System: $(uname -a)"
    
    # Verify prerequisites
    verify_system_compatibility
    verify_network_connectivity
    
    # Execute phases
    local phases=(
        "phase-1-system-prep.sh"
        "phase-2-package-managers.sh"
        "phase-3-development-tools.sh"
        "phase-4-applications.sh"
        "phase-5-finalization.sh"
    )
    
    for phase in "${phases[@]}"; do
        execute_phase "$phase"
    done
    
    log_success "🎉 Lion's Paw Reanimation Complete!"
    display_summary
}

# Execute individual phase
execute_phase() {
    local phase_script="$1"
    local phase_path="$PHASES_DIR/$phase_script"
    
    if [[ ! -f "$phase_path" ]]; then
        log_error "Phase script not found: $phase_script"
        exit 1
    fi
    
    log_info "Executing phase: $phase_script"
    
    if bash "$phase_path"; then
        log_success "Phase completed: $phase_script"
    else
        log_error "Phase failed: $phase_script"
        exit 1
    fi
}

# System compatibility verification
verify_system_compatibility() {
    log_info "Verifying system compatibility..."
    
    # Check macOS
    if [[ "$(uname)" != "Darwin" ]]; then
        log_error "This script is designed for macOS (Darwin) only"
        exit 1
    fi
    
    # Check macOS version
    local macos_version
    macos_version=$(sw_vers -productVersion)
    log_info "Detected macOS version: $macos_version"
    
    # Check architecture
    local arch
    arch=$(uname -m)
    log_info "Detected architecture: $arch"
    
    log_success "System compatibility verified"
}

# Display installation summary
display_summary() {
    echo -e "${CYAN}"
    echo "================================================"
    echo "     Lion's Paw Reanimation Summary"
    echo "================================================"
    echo -e "${NC}"
    
    echo -e "${GREEN}✅ Installed Components:${NC}"
    command -v brew >/dev/null 2>&1 && echo "  • Homebrew: $(brew --version | head -n1)"
    command -v bun >/dev/null 2>&1 && echo "  • Bun: $(bun --version)"
    command -v volta >/dev/null 2>&1 && echo "  • Volta: $(volta --version)"
    [[ -f /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh ]] && echo "  • Nix: Installed"
    
    echo -e "\n${BLUE}📁 Log files: $LOG_DIR${NC}"
    echo -e "${BLUE}📚 Documentation: $SCRIPT_DIR/docs/${NC}"
    
    echo -e "\n${YELLOW}Next steps:${NC}"
    echo "1. Source your shell configuration: source ~/.zshrc"
    echo "2. Verify installations: $SCRIPT_DIR/tests/integration-tests.sh"
    echo "3. Review logs for any warnings"
}

# Trap for cleanup on exit
cleanup() {
    log_info "Cleaning up temporary files..."
    # Add cleanup logic here
}

trap cleanup EXIT

# Execute main function
main "$@"
```

## Phase 2: Package Managers Installation

```bash
#!/bin/bash

# Phase 2: Package Managers Installation
# Part of Lion's Paw Reanimation System

set -euo pipefail

source "$(dirname "$0")/../lib/logger.sh"

log_info "🔧 Phase 2: Installing Package Managers"

install_homebrew() {
    log_info "Installing Homebrew..."
    
    if command -v brew >/dev/null 2>&1; then
        log_info "Homebrew already installed, updating..."
        brew update
    else
        log_info "Installing Homebrew from scratch..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        
        # Add to PATH for current session
        if [[ -f "/opt/homebrew/bin/brew" ]]; then
            eval "$(/opt/homebrew/bin/brew shellenv)"
        elif [[ -f "/usr/local/bin/brew" ]]; then
            eval "$(/usr/local/bin/brew shellenv)"
        fi
    fi
    
    log_success "Homebrew installation completed"
}

install_bun() {
    log_info "Installing Bun..."
    
    if command -v bun >/dev/null 2>&1; then
        log_info "Bun already installed: $(bun --version)"
    else
        curl -fsSL https://bun.sh/install | bash
        
        # Source bun in current session
        if [[ -f "$HOME/.bun/bin/bun" ]]; then
            export PATH="$HOME/.bun/bin:$PATH"
        fi
    fi
    
    log_success "Bun installation completed"
}

install_volta() {
    log_info "Installing Volta..."
    
    if command -v volta >/dev/null 2>&1; then
        log_info "Volta already installed: $(volta --version)"
    else
        curl https://get.volta.sh | bash
        
        # Source volta in current session
        if [[ -f "$HOME/.volta/bin/volta" ]]; then
            export PATH="$HOME/.volta/bin:$PATH"
        fi
    fi
    
    log_success "Volta installation completed"
}

install_nix() {
    log_info "Installing Nix (Darwin)..."
    
    if [[ -f "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh" ]]; then
        log_info "Nix already installed"
    else
        # Install Nix with daemon support for macOS
        curl -L https://nixos.org/nix/install | sh -s -- --daemon
        
        # Source nix in current session
        if [[ -f "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh" ]]; then
            source "/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh"
        fi
    fi
    
    log_success "Nix installation completed"
}

# Execute installations
install_homebrew
install_bun
install_volta
install_nix

log_success "✅ Phase 2 completed: All package managers installed"
