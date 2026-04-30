class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.5.0-400"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.5.0-400/termonmac-arm64.tar.gz"
    sha256 "785546482f406d2e8fee198fdb26d10aed63b60a747a2c8d58f8c783bf6be379"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.5.0-400/termonmac-x86_64.tar.gz"
    sha256 "75812d7b2cada5ab13bd3a33e333fec1f80c30d2e9c42eb200ba52f1a4020a73"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
