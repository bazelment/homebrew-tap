class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.03.27"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.27/wt-v2026.03.27-darwin-arm64.tar.gz"
      sha256 "1a5f15838cd4467d1a2621a1ed0738e5720cb256ec30f1a22a017685db524257"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.27/wt-v2026.03.27-darwin-amd64.tar.gz"
      sha256 "8e040108e97457c0c24360eca4f92bccb93ce9cd9a48f4818b19aa7d289964aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.27/wt-v2026.03.27-linux-arm64.tar.gz"
      sha256 "53caa6d850ecb71c997d85362ec18a50e2fb7e97f0486d91f75d7cb1e4e7919c"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.03.27/wt-v2026.03.27-linux-amd64.tar.gz"
      sha256 "48ba45da5ff7ea7521cd06e7fe99fef2e417cf7c8c839574934bfc4af2c57492"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
