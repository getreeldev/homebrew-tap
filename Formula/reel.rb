class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.7.2"

  on_macos do
    on_intel do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_darwin_amd64.tar.gz"
      sha256 "3e70e43a7a1127b71adcb4b4ba63d09d0f2703b218655aa0014b0fb680452894"
    end
    on_arm do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "991dd0941d899eb078b53b73ffe6ce5d1176adceea35ae78d35a17b81c071522"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "6a55a9b6373126374e38acddd380046c38489ce3a923f5711d8e4275841034de"
    end
    on_arm do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_linux_arm64.tar.gz"
      sha256 "927fa6d007ef796a50cfaa99cf8b02283e6125d768dbaa5cad06007782b7223c"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
