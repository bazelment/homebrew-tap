class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.13"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.13/wt-v2026.04.13-darwin-arm64.tar.gz"
      sha256 "fd45db8fa7e4846ff28926144e7bdc9ddff5d7103af818947715f5ba61fe3dac"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.13/wt-v2026.04.13-darwin-amd64.tar.gz"
      sha256 "a7691af042ea253acdc86b820239d079bba4acbf28e920bc76531af2a57304fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.13/wt-v2026.04.13-linux-arm64.tar.gz"
      sha256 "ac5743fb1fdcef067f752a08bfb77dcf72dc3764558b38873f4f18e4e16400a2"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.13/wt-v2026.04.13-linux-amd64.tar.gz"
      sha256 "c62bbeeef39e11e6911034335807e9895aa03fc68bcec242c380b930026ced98"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
