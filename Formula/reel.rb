class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.7.1"

  on_macos do
    on_intel do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_darwin_amd64.tar.gz"
      sha256 "1b60c4a920657c1221ba53066097b1d2015a39fde7b71c43a73426fb9eefb4c7"
    end
    on_arm do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "e4f6ab67c13ff706bfe08ba933ff668ce52fe2e7b948103ee8370382a2626727"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "d042f4055548d5c81bf02dafc80f8133f2cdc380a8ba38dd1815b6814c5ec4ab"
    end
    on_arm do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_linux_arm64.tar.gz"
      sha256 "d99e3bb77711647591ff409080712c9c45dc9a3c3007168d1b100d8b09a2b0eb"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
