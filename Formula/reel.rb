class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.5.0"

  on_macos do
    on_intel do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_darwin_amd64.tar.gz"
      sha256 "de64fa0f854f4715c8e5b38e868cd86d4dc7f58c26b423a88cf22c1392e72ea0"
    end
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "2640538e0ad80e8f939619f9c6cf10945ed9eb7d65463d6534639ecef2c30020"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "545f5492f5e93a2fd536ab313e87de962fbd622b5d1b79cea2499ee25bc2f7bf"
    end
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_arm64.tar.gz"
      sha256 "d3129feda5c45ffa79fe8e9b878d2062be4af92ceffb45646e03bf88e5e22f6b"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
