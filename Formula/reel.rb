class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.11.2"

  on_macos do
    on_intel do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_darwin_amd64.tar.gz"
      sha256 "8b103edc72e0ceb05767e328bd25c843e4081840532930d7371dab1aac00d5a5"
    end
    on_arm do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "3c526b4e181f56cc55ecdb6f6d99902e0ebb220757baa281575d7c4e9af4c835"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "eb7731b1f983eb837244ff8f212df84e3cb77521f923e131cf9d6331262c85fb"
    end
    on_arm do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_linux_arm64.tar.gz"
      sha256 "1bbfbb34a23c4a38b71bab10ccb3a4cf392ee3992df3868f49764c44b531531b"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
