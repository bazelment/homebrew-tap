class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.01"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.01/bramble-v2026.06.01-darwin-arm64.tar.gz"
      sha256 "dacf9d63dddeb9837274d372ac0f864d8412e0c9ebff13bb3c2101d2b16a9aba"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.01/bramble-v2026.06.01-darwin-amd64.tar.gz"
      sha256 "6e318263f4465cb29b840a05f50bd33e7b818dc836ab788e5f64a7367b267ddc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.01/bramble-v2026.06.01-linux-arm64.tar.gz"
      sha256 "808a49c48ee1f9eec2623d5e544b7ab7f160115d5bb3e0c9208aa30213f4ea2a"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.01/bramble-v2026.06.01-linux-amd64.tar.gz"
      sha256 "b4c732e8f7373adedd1ca490c971ec67d5324232def5b2a310d6c879144af763"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
