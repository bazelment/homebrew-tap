class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.11"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.11/bramble-v2026.08.11-darwin-arm64.tar.gz"
      sha256 "96ee7a60a6932c80e5488c9f1b9997a1702a932e63bcda200db4407f462db163"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.11/bramble-v2026.08.11-darwin-amd64.tar.gz"
      sha256 "fa0b37a650a4159ee3b59c76027f9453e7e78e9f4b7e7e23f2790e77e963c5ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.11/bramble-v2026.08.11-linux-arm64.tar.gz"
      sha256 "6b7fbb25b8f2234566efe9316b61176efaeb56356912cd25c305cece69aab5a6"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.11/bramble-v2026.08.11-linux-amd64.tar.gz"
      sha256 "def6ee7d0f9e020bc78aac93893bb18c518fc00100abdf966aa8a4ea56eb73a4"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
