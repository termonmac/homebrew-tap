class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.0.0-113"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-113/termonmac-arm64.tar.gz"
    sha256 "5d035541d3cc025eba648a90aa184edabe76b2621b00e7ddb58efab4a5e60e1b"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-113/termonmac-x86_64.tar.gz"
    sha256 "1cb52c4a02b83cfdfe40c02d17c93618f044144b470a68530f7cb7e995776533"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
