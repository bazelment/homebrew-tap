class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.24"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.24/wt-v2026.08.24-darwin-arm64.tar.gz"
      sha256 "7a0177b2e1dfe2aec7306c4417767734b902d334ce193b2f0413398e4947d5af"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.24/wt-v2026.08.24-darwin-amd64.tar.gz"
      sha256 "44582c9cf8d4af20888647280007c566d6098aef5ee6a242b12d0a3c1c74bf37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.24/wt-v2026.08.24-linux-arm64.tar.gz"
      sha256 "b833f0363e40410f56eb3e12cf4a7f7f2485c534b9b65093bf236a671d70a910"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.24/wt-v2026.08.24-linux-amd64.tar.gz"
      sha256 "f468a7a863ff1868fad5168381805779d42bbb30d6e0b9602429c36d73db5114"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
