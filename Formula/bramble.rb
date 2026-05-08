class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.08"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.08/bramble-v2026.05.08-darwin-arm64.tar.gz"
      sha256 "546f0fedc5c679f9daaaa5a6a8e885bcb85f0a7173a1b9a01c491d9a0c0fe1c2"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.08/bramble-v2026.05.08-darwin-amd64.tar.gz"
      sha256 "a224f0a3f828713be9a37c760797ffe2b34ab442c973433067fafea1095244e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.08/bramble-v2026.05.08-linux-arm64.tar.gz"
      sha256 "2a8315deadda650a3c293bf6e6e16fadb2e6776b377ce2eb58dff31feaf9a907"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.08/bramble-v2026.05.08-linux-amd64.tar.gz"
      sha256 "3d5f0503eb057c37a0a6c12feb5eb5f52eccf19e2fbdeea98b429f0a163a4868"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
