class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.4.0"

  on_macos do
    on_intel do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_darwin_amd64.tar.gz"
      sha256 "15be1c9d5e9c47031f968b601c4b6172e3ae80c5189eb483f083039a7dd11b23"
    end
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "a7a1320215e85c843c07bd14106542c34527abb75095dc940e47e04fd6939265"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "73bdb54b01f9532b8f5624b00e5082415f047ae56a47c4f30bab149be7dcd446"
    end
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_arm64.tar.gz"
      sha256 "6bcca42c1d0f1aad419f60b9626699645e0aa5b79f912ea7acad69f4f2b24f4e"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
