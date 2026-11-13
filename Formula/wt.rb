class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.13"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.13/wt-v2026.11.13-darwin-arm64.tar.gz"
      sha256 "67c2bc0859d795593c73e008a49ae7750ef4398747ee7dc8145421da16aed719"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.13/wt-v2026.11.13-darwin-amd64.tar.gz"
      sha256 "4291399b0bcefd0e07c3872c4fd269bc237a401b1d96defb2d9f7e48c44a0d70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.13/wt-v2026.11.13-linux-arm64.tar.gz"
      sha256 "4c9d52e9701e17e808c37dcf32a6480dc634cd6227d8eca5150f5e40db99df6a"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.13/wt-v2026.11.13-linux-amd64.tar.gz"
      sha256 "f1a9c727efe7c10b156fa6f60111b3510010607b043803eaae010291aaaf71eb"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
