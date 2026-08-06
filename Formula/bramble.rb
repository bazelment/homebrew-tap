class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.06"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.06/bramble-v2026.08.06-darwin-arm64.tar.gz"
      sha256 "b99788f741823beec19c9dff3449de97a7055dd2ab20d11ab84c5259f7c2fdfc"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.06/bramble-v2026.08.06-darwin-amd64.tar.gz"
      sha256 "fd4528a3474eccd3d744932b6b5c0bcc136227f3e2a5068f4a890956f43c416c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.06/bramble-v2026.08.06-linux-arm64.tar.gz"
      sha256 "4bf478b9c24a2f52c27747e84dfdeebbc809cc1dca140412892df05f16faa7ef"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.06/bramble-v2026.08.06-linux-amd64.tar.gz"
      sha256 "6270c77f5c337a27b3063aa776a79efdc0932fe43c17596997c5aef481a4b5cb"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
