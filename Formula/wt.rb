class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.03.26"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.26/wt-v2026.03.26-darwin-arm64.tar.gz"
      sha256 "c99ce67cd5d4b6043f61d5159eab23240bb07125682e9fbaf14af199fee1aa86"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.26/wt-v2026.03.26-darwin-amd64.tar.gz"
      sha256 "e43330edd10a43c29b9c686cf5771a9f9ba0f603d2c3353e0ad871536a54dbda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.26/wt-v2026.03.26-linux-arm64.tar.gz"
      sha256 "c806b2c4741908f167b3c8d4166617a83893ca3de1d2438a5f010ba567973ce1"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.26/wt-v2026.03.26-linux-amd64.tar.gz"
      sha256 "081fdffe37d2ad1d27a0ae469ca8dab9cca77cfb50acdf87ceebc50944f7b1fd"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
