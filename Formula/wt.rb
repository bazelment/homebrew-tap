class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.09"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.09/wt-v2026.04.09-darwin-arm64.tar.gz"
      sha256 "2294e90b7abaf75b9e8870c9fb20064c8db8b633dcb25f26375bb45eea2038db"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.09/wt-v2026.04.09-darwin-amd64.tar.gz"
      sha256 "f0b3ce603b440412a3aa3286baf8f98c22cf42c3f4ac5e11144442500ab4110b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.09/wt-v2026.04.09-linux-arm64.tar.gz"
      sha256 "9b6fec1aa4f6597e6058ce962e0377f2c3060b905ef6976f5e39b23a9a848181"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.09/wt-v2026.04.09-linux-amd64.tar.gz"
      sha256 "9a7f583acc33e7e7fefd10d7aee7ac242f6a515317770bc241a78140080bc7b8"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
