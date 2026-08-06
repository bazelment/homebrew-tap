class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.06"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.06/wt-v2026.08.06-darwin-arm64.tar.gz"
      sha256 "c8bdbb84d93e08d815a7242cf0592c86cc9ca57974e53935a9a9c3eabce273dd"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.06/wt-v2026.08.06-darwin-amd64.tar.gz"
      sha256 "77190915035a2ed332983584279056b05d8353d6250cc80744f602a3e3981b91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.06/wt-v2026.08.06-linux-arm64.tar.gz"
      sha256 "e8bbb0ba3984038928b2b34a734dd607967789d21f71df7e741096643791f9e7"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.06/wt-v2026.08.06-linux-amd64.tar.gz"
      sha256 "4af80a31bf24011a30f77163f19b5b085a4f9f85ab21d97608299c0ddd59b910"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
