class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.29"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.29/wt-v2026.08.29-darwin-arm64.tar.gz"
      sha256 "cde0093a630876ef3190a370bc4eaffcc67b049b77597d04d632e0618370b39f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.29/wt-v2026.08.29-darwin-amd64.tar.gz"
      sha256 "eaa1de05dbdeb78cc4e22f931b977e6abe108af1119e070a2c04aec1dc407e9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.29/wt-v2026.08.29-linux-arm64.tar.gz"
      sha256 "981be3a912afe38fcb6aecb0f94740f94166f5595e6441f3503cb3dccd781db9"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.29/wt-v2026.08.29-linux-amd64.tar.gz"
      sha256 "f6a70a9721b70dfbcfddf6d0d46449269517c4e0339da36477234b90c55193da"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
