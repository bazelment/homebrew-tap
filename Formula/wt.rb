class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.14"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.14/wt-v2026.11.14-darwin-arm64.tar.gz"
      sha256 "f0ba58b5b2d9bc87d0930282c4d9a4f695d1faf06e013e824d723b45babc10b3"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.14/wt-v2026.11.14-darwin-amd64.tar.gz"
      sha256 "1c6dcf4b755bee5fa5f673936f8f53c18a42e58434ba4fae56f1577749edbbcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.14/wt-v2026.11.14-linux-arm64.tar.gz"
      sha256 "2b4a179e5cccf49e8c836b186a86f44518063fefc9e723b060e38ad14a85fa07"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.14/wt-v2026.11.14-linux-amd64.tar.gz"
      sha256 "381c109fa49be08335a22396438502cbd674ed700939d10eee0f9f2503d3318e"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
