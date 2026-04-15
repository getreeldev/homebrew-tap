class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.3.0"

  on_macos do
    on_intel do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_darwin_amd64.tar.gz"
      sha256 "0b39f4789cead84a88125b05f5ed5064f2da272ff22aa054f5ad49f75dc17276"
    end
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "ec18b3424272e81a2d7dcba31cf122b82e315df519aa7d9160c0ae7b1150c4d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "ca0819053122c088d18a990c3eb0906e816f0688137e26cf1733145fbb50e350"
    end
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_arm64.tar.gz"
      sha256 "cdd36f8ece530417862a1b3187581932b40b33b062b2422dd3a9a2b8560465d2"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
