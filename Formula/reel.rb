class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.7.0"

  on_macos do
    on_intel do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_darwin_amd64.tar.gz"
      sha256 "5d53885c9ca1016384b251f32499166921f3bfce5526d92c0adbf0444fc6741c"
    end
    on_arm do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "e0e96461dd317a4f5ecb87d367afcd7e37c999dae004058172e720a7012e1e9f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "2b873943a89936d5c28139b355e2b36b152305ac90e0e400a5948fa1c9a6066d"
    end
    on_arm do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_linux_arm64.tar.gz"
      sha256 "6dbf677600d39c527603cba6a2c68c930562ae45dd3d1b7bc76d92121e3e1cad"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
