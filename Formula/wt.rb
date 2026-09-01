class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.09.01"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.01/wt-v2026.09.01-darwin-arm64.tar.gz"
      sha256 "e618e7e2f74362808d272dcc672a6ac6f36b05c613cdf2fea75921d9d94b7f98"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.01/wt-v2026.09.01-darwin-amd64.tar.gz"
      sha256 "f93818ca806eaa69efc7fdde3d6c11e886a8eecee8d2c7ee6e477ea70f45f45c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.01/wt-v2026.09.01-linux-arm64.tar.gz"
      sha256 "e21cbf9f99d758b18e662466e5120bf39f1acc9575aad87f365ab08e550d8dbe"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.09.01/wt-v2026.09.01-linux-amd64.tar.gz"
      sha256 "673330203716195542ef712ab41f496afd471c2c81b7d35af5afe69abc6e44dd"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
