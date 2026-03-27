class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.03.27"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.27/bramble-v2026.03.27-darwin-arm64.tar.gz"
      sha256 "c87a3c118e7d488bd491cf9e5b1cafd904cdc0652a7c9d23c79ed1dad04ed639"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.27/bramble-v2026.03.27-darwin-amd64.tar.gz"
      sha256 "a852fc9c4fb175d50c6332fcfcbd46a7100cd4d1a7e3ca20db3605e790c65c87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.27/bramble-v2026.03.27-linux-arm64.tar.gz"
      sha256 "06f51fb022d447666d0eea3a50fdb7169f1e9bc4427bc0b41163dfb8428e6372"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.27/bramble-v2026.03.27-linux-amd64.tar.gz"
      sha256 "1327ab843ee0d2498edb62b890be3cb0ed2ac19907eba4c078feb64bcf20fc34"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
