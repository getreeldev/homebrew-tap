class Reel < Formula
  desc "Kubernetes container compliance — SBOMs, crypto inventories, vulnerability scans, malware detection"
  homepage "https://getreel.dev"
  license :cannot_represent
  version "1.12.0"

  on_macos do
    on_intel do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_darwin_amd64.tar.gz"
      sha256 "33e9b5e43d13b9b73ceeacc3f7f36718f8c8b2f4582db3a068109ca4583ac6ed"
    end
    on_arm do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_darwin_arm64.tar.gz"
      sha256 "780160fe1f2081e1d91d2762aee47be089b9b7f0d2b86ecd76bab0c3bcb95d5e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_linux_amd64.tar.gz"
      sha256 "fa49ea46a7031420a99d7b294e7a6319e93061ba04bf6a51440f34329610ccf0"
    end
    on_arm do
      url "https://github.com/getreeldev/reel-cli/releases/download/v#{version}/reel_linux_arm64.tar.gz"
      sha256 "68ab625b4a1e09f2e950ba2dbee06fe9c5f1584f45620eaddbd417c67c7f5d7b"
    end
  end

  def install
    bin.install "reel"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reel version")
  end
end
