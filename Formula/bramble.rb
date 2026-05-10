class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.10"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.10/bramble-v2026.05.10-darwin-arm64.tar.gz"
      sha256 "cee2f1dcaaded67aa84d72069884faec459995f29b07f3253862b4973655ec2f"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.10/bramble-v2026.05.10-darwin-amd64.tar.gz"
      sha256 "f0269c3f212d9423ce78894c8a73597a5f4137c378446fb70dea35f0df514d13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.10/bramble-v2026.05.10-linux-arm64.tar.gz"
      sha256 "893c9c01852b36863264e82f4b1452835bfe57eff984ce0f4bfdb8840dc4a7c3"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.10/bramble-v2026.05.10-linux-amd64.tar.gz"
      sha256 "80dd4978211094c40e6e1c709836cadd907b95688495d31f29dad38449d99e93"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
