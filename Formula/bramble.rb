class Bramble < Formula
  desc "TUI for managing worktrees and AI sessions"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.08.29"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.29/bramble-v2026.08.29-darwin-arm64.tar.gz"
      sha256 "f75be2fe66ac4f767a4b8e59f0b48e79441bbc9f211c606f5cb00ea24f4ffb34"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.29/bramble-v2026.08.29-darwin-amd64.tar.gz"
      sha256 "37728b89c6a66b4b7f8a0221725c1ee55b78f7d2bc3201430b51b9a64b3f0bd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.29/bramble-v2026.08.29-linux-arm64.tar.gz"
      sha256 "7784aa8338ccd70d826e3fba96d3110d6852dc075ab17429f86fd0db29523688"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.08.29/bramble-v2026.08.29-linux-amd64.tar.gz"
      sha256 "86222979c9a4c4684238c0f67a66d07f0aea26dfe54a7b361017decb8f413aa4"
    end
  end

  def install
    bin.install "bramble"
  end

  test do
    assert_match "TUI for managing worktrees", shell_output("#{bin}/bramble --help")
  end
end
