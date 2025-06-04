. "$HOME/.cargo/env"

# Path
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
export PATH="$HOME/.amplify/bin:$PATH"
export PATH="$HOME/dev/zig/build/stage3/bin:$PATH"
export PATH="$HOME/dev/flutter/bin:$PATH"
export PATH="$HOME/.pub-cache/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$(go env GOPATH)/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="/opt/homebrew/opt/bazel@7/bin:$PATH"

# Export variables
export LLVM_SYS_181_PREFIX=$(brew --prefix llvm)
export PICO_SDK_PATH="$HOME/dev/pico/pico-sdk"
export PICO_EXTRAS_PATH="$HOME/dev/pico/pico-extras"
export DISABLE_PANDERA_IMPORT_WARNING=True

