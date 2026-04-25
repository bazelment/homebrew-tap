class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.25"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.25/bramble-v2026.04.25-darwin-arm64.tar.gz"
      sha256 "754909c6f6dd4cfd9674d5a85bec3acdf46634b5292df77fbd21e8b4c73b42e4"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.25/bramble-v2026.04.25-darwin-amd64.tar.gz"
      sha256 "7937491b527cb56395b98ede2e8ab644ae4eec161a85713a43f58bec87c02326"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.25/bramble-v2026.04.25-linux-arm64.tar.gz"
      sha256 "afed099294d7de4e64a461354aa96a56b948bdf7a78aa4a39f7f3b680ddd6b36"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.25/bramble-v2026.04.25-linux-amd64.tar.gz"
      sha256 "49ec32cb43eb88aa0ef627235fcc7cb500d331c2a9c54c7f0fedf6b6b22899f3"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
