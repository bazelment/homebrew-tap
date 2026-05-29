class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.29"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.29/wt-v2026.05.29-darwin-arm64.tar.gz"
      sha256 "1a9fb74e9370072aada1897e70bc230659f6b4e0c37081889bee53974d1e3815"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.29/wt-v2026.05.29-darwin-amd64.tar.gz"
      sha256 "af0d20203b5339e0758e11a3c8f17b5cc552f170696d485b87ccf5b9a330bc90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.29/wt-v2026.05.29-linux-arm64.tar.gz"
      sha256 "44b2c0e2ef04ff2800621a448fc4e3d3ce721228850c7d5def43f1148bd120cc"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.29/wt-v2026.05.29-linux-amd64.tar.gz"
      sha256 "610013d0d0e3b0d299015e9da5958abaebbcbb923be7f53c3a5fc9f81fdfe713"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
