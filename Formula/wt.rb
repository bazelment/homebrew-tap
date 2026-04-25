class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.25"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.25/wt-v2026.04.25-darwin-arm64.tar.gz"
      sha256 "0b2d2087c34a766833674fc400d34345b2046de95763c747997ac61342e92f03"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.25/wt-v2026.04.25-darwin-amd64.tar.gz"
      sha256 "3e1c67c755eb3c8518a0ca63c8db3baf1a284065233fe3b8c9bf04681a538b6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.25/wt-v2026.04.25-linux-arm64.tar.gz"
      sha256 "22db0d6f491880b6250ec2adc49599ff8699db025301986f502e2a0d5b765ecc"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.25/wt-v2026.04.25-linux-amd64.tar.gz"
      sha256 "d435648dcf296647493f77ec81a6bc58b45ebf434efdc93413b8c771bd10033b"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
