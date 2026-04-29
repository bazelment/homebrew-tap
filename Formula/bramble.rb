class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.29"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.29/bramble-v2026.04.29-darwin-arm64.tar.gz"
      sha256 "e80fdbd61bff125ad6c07da1173e7be75f5bc1cf2e5b0f2c4878e1eb9a693da5"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.29/bramble-v2026.04.29-darwin-amd64.tar.gz"
      sha256 "4b52eb5c1358e8721e78d8c9edf2a2e388368c78a422651d8fab966c28b91c77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.29/bramble-v2026.04.29-linux-arm64.tar.gz"
      sha256 "63238ad8aec3edb43fb6049ecbc9dba80f97f3011bae952855103056ace83f25"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.29/bramble-v2026.04.29-linux-amd64.tar.gz"
      sha256 "4a64d247fbc15664ef12c9ad3880e0f58886ebef07788932597d2953daea4d02"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
