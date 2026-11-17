class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.11.17"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.17/wt-v2026.11.17-darwin-arm64.tar.gz"
      sha256 "a899bcd5f328dc80e5d52de5624ad5aaed1ea411ca854b9adfc2b16688de1e41"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.17/wt-v2026.11.17-darwin-amd64.tar.gz"
      sha256 "882e9ff8fb36945b1d67c8c50e424fa2ca8d050a4085f478b5d3a4940cbd7daa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.17/wt-v2026.11.17-linux-arm64.tar.gz"
      sha256 "800319f518cbc14b94dd8b8ec0d02055df5e0b90e00a64890f0541abf95d7253"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.11.17/wt-v2026.11.17-linux-amd64.tar.gz"
      sha256 "a184abf98f2b8a5292bf63dc82a885acbd7274fa5a40df3d4f58d9c5467eebf9"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
