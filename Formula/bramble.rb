class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.07"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.07/bramble-v2026.08.07-darwin-arm64.tar.gz"
      sha256 "7993764250a3b12fd6ed20bda7e010975a83b2e6a21f28b4025a4b995b220a43"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.07/bramble-v2026.08.07-darwin-amd64.tar.gz"
      sha256 "6874899af1ad497c9498e8bc38a45f03f5cea7815577da71f6887da511d1891b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.07/bramble-v2026.08.07-linux-arm64.tar.gz"
      sha256 "ce4df15675639061521d7ac4bc380221219d0488f73f33c71d161971d9c81570"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.07/bramble-v2026.08.07-linux-amd64.tar.gz"
      sha256 "695828b82ca70bcde11bfc650eae40c6ce7514c4f455adc059ed9a8fdc54215d"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
