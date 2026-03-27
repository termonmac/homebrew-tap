class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.0.0-115"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-115/termonmac-arm64.tar.gz"
    sha256 "be4560cf6357e1869233872eab6d45b26ef0c171aa6ed5fe4212260df346d891"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-115/termonmac-x86_64.tar.gz"
    sha256 "0a049c786e671d1c6e585a93fcd20b75c30c1aa38d728a1c385993576565029d"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
