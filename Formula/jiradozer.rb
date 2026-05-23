class Jiradozer < Formula
  desc "Issue-driven development workflow"
  homepage "https://github.com/bazelment/yoloswe"
  version "2026.05.23"

  on_macos do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.23/jiradozer-v2026.05.23-darwin-arm64.tar.gz"
      sha256 "54ef11efaa6e120f41d4c516ff0cad5bc60f7e3147c68d6136115f4b10ad8ee3"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.23/jiradozer-v2026.05.23-darwin-amd64.tar.gz"
      sha256 "f776901af34a78d593c88513d02c939cc4623f234a8ec597039c1ce99f6368b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.23/jiradozer-v2026.05.23-linux-arm64.tar.gz"
      sha256 "3bbb30f238f5c617b8e563cf7f2fcaf6877a05568ba5dea66c116a39d4b7f36b"
    end
    on_intel do
      url "https://github.com/bazelment/yoloswe/releases/download/v2026.05.23/jiradozer-v2026.05.23-linux-amd64.tar.gz"
      sha256 "f18f6c5fcbd332c28f94811609dcb1125043a63163a373cf36686b74c4079e1a"
    end
  end

  def install
    bin.install "jiradozer"
  end

  test do
    assert_match "Issue-driven development workflow", shell_output("#{bin}/jiradozer --help")
  end
end
