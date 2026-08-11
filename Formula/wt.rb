class Wt < Formula
  desc "Git worktree CLI for power users"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.11"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.11/wt-v2026.08.11-darwin-arm64.tar.gz"
      sha256 "e428da89c8cfee53427e410a8ab52526905c0b3f4aea46fd65eb7deadc3f9b00"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.11/wt-v2026.08.11-darwin-amd64.tar.gz"
      sha256 "ea5471f80309baadac6fe8b7727e85631c6d9e8628fb68ae88b576a992f086f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.11/wt-v2026.08.11-linux-arm64.tar.gz"
      sha256 "caf50f2caef6aad9eb5c9bbc1b98cbeea4ed6b9be438aef8b36026812aeb799d"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.11/wt-v2026.08.11-linux-amd64.tar.gz"
      sha256 "c66d67019ee4de469a27361755ada41bc9d7cd0e7cf053791cd8b8075b2e59ac"
    end
  end

  def install
    bin.install "wt"
  end

  test do
    assert_match "Git worktree CLI for power users", shell_output("#{bin}/wt --help")
  end
end
