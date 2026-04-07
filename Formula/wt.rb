class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.04.07"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.07/wt-v2026.04.07-darwin-arm64.tar.gz"
      sha256 "83b2b733220ea651ec2f654f033363a78093b3b69e202c116f722822862b46a7"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.07/wt-v2026.04.07-darwin-amd64.tar.gz"
      sha256 "20fdc930e6ff0d8a99b832f112bf62c318ea06ae0b84dae65b3baf23eca28cbe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.07/wt-v2026.04.07-linux-arm64.tar.gz"
      sha256 "0575d9a74c8b86d8768dd551731f2cad7d02b42dee2f42b98b4307c15f3baa0f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.04.07/wt-v2026.04.07-linux-amd64.tar.gz"
      sha256 "2651b66db40e0803d20107a4530902144dba197b00f087215a93a29854f59f4d"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
