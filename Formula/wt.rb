class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.05"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.05/wt-v2026.05.05-darwin-arm64.tar.gz"
      sha256 "3656554d50432c65d519b2651b565816dba5724bb2bf2bc6b9af91cf9217044e"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.05/wt-v2026.05.05-darwin-amd64.tar.gz"
      sha256 "ad7e82a90270c3e843c019d72aab8b6f7536e84a17360b3a7fba4429b550f0bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.05/wt-v2026.05.05-linux-arm64.tar.gz"
      sha256 "661ba81cb038fa785678895bfde4673155bf0cf5b29e090bacb80790b843912b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.05/wt-v2026.05.05-linux-amd64.tar.gz"
      sha256 "4f317e3e636092e33a7d8aef5842128644b366087df9e49124fbac062e9c9e00"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
