class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.27"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.27/wt-v2026.08.27-darwin-arm64.tar.gz"
      sha256 "d4c3dc6b898dc5dfda4a7df5a3630eb7f0d48a9da8babe6e2e88c43e474d6922"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.27/wt-v2026.08.27-darwin-amd64.tar.gz"
      sha256 "e2a0bc3e98d1d9eb29570c054adb27079d66e6d5a9f8d8bbd3bb41436c9e6d35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.27/wt-v2026.08.27-linux-arm64.tar.gz"
      sha256 "b12898d53ce8dd92831d25d07fd5ed40adf1d1855110c9cb38f596981d6257e0"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.27/wt-v2026.08.27-linux-amd64.tar.gz"
      sha256 "3ec13dfef03504a3c9aa28010545b79af5304bab64d998ea8d4eb88c5a944202"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
