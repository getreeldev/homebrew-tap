class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.5.1"

  on_macos do
    on_intel do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_darwin_amd64.tar.gz"
      sha256 "31cedebbd7f8c6513939cc2b760ee72d1bbaa31171c21f5922ad9e1028ccabf1"
    end
    on_arm do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "bc99254e73e1a3a5b084c6e8ae5baced2d58c7ba468a24e2f0ed2fdbe6b2cc02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "522365c57168099c51fbf71657e5563d1ee1279502f3fae780d7bb0aa02a85fe"
    end
    on_arm do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_linux_arm64.tar.gz"
      sha256 "37da11d71e9300c5e06ee67dbe4643e19428301f3a9c9200f525d804479f2bd1"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
