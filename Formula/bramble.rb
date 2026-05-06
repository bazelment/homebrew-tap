class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.06"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.06/bramble-v2026.05.06-darwin-arm64.tar.gz"
      sha256 "88e027a6e43aa023b2ff0f394ac02d1d1b15b8d6cda85726d1bd9c149ba22abb"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.06/bramble-v2026.05.06-darwin-amd64.tar.gz"
      sha256 "90bacc0dd9c8f128e58f391fd4b2e81aeb441e1a932d18b9f66a586c396ec4a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.06/bramble-v2026.05.06-linux-arm64.tar.gz"
      sha256 "95194c3427f455c7054d42f4e306a36d216cef4af6f1fb6826dba3ac2802a32a"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.06/bramble-v2026.05.06-linux-amd64.tar.gz"
      sha256 "34aa9acb60e2446b4825c363e3b759f436bcae54a50e40161c1045ded1cedc90"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
