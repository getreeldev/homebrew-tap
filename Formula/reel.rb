class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "7a29a1c90011f20346411969f96c57ec1802c74e5ea6fc57c66a814bd8c81e80"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "d01df7467c1b310193408e002adc69f4aee654cfe23d35d758cb665b20ab88b3"
    end
    on_arm do
      url "https://github.com/getreeldev/releases/releases/download/v#{version}/reel_linux_arm64.tar.gz"
      sha256 "18cec49de7efbb4750f1759e6b959aa569b072302d1e737fc2d2bcf70a0071b6"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
