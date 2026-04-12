class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.12"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.12/bramble-v2026.04.12-darwin-arm64.tar.gz"
      sha256 "709e76289280b9282b2e35b32853bcaa7cdc5772dd3cd83d24dfb68e1f097d89"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.12/bramble-v2026.04.12-darwin-amd64.tar.gz"
      sha256 "823ef73b10028c4edf5ddcace0b0f9a53fa4fa5015cb6582f47fb47d690ca8d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.12/bramble-v2026.04.12-linux-arm64.tar.gz"
      sha256 "940793c5d1ac58b972d8393179ad81f541c0860e49f1b8fbe815819cd9a8569d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.12/bramble-v2026.04.12-linux-amd64.tar.gz"
      sha256 "52e23cf914a07519ddc0d2aa01b0ee30c892d51557bdd346f23c6d4e40c5051e"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
