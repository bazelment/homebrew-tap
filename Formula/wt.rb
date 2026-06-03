class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.06.03"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.03/wt-v2026.06.03-darwin-arm64.tar.gz"
      sha256 "914063c810283c83fdc88f86e7531a9f67d947679a838434828b936054d3f963"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.03/wt-v2026.06.03-darwin-amd64.tar.gz"
      sha256 "9fa8bcc50f6008d2b44593c6e682ac24c9002537f3908118b29f1c506ca605b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.03/wt-v2026.06.03-linux-arm64.tar.gz"
      sha256 "29ffae3e49176ef6daf83aedc441bbb7d52a770013cef615846c2753930b218d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.06.03/wt-v2026.06.03-linux-amd64.tar.gz"
      sha256 "7a61603a4b031879ab5f7328099ff0569ff61cb99ea966d591b9b716753ee66a"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
