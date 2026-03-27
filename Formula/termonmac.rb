class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.0.0-114"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-114/termonmac-arm64.tar.gz"
    sha256 "b1d7f8f594ebab0b964e5ff3d90636f86a33fc82fd8a6025ddd5c8155de1befb"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-114/termonmac-x86_64.tar.gz"
    sha256 "0287d8c0ee3ac59a4699bd265be0c1ae566758bfeaacb08c34ceab5bfb69bd5d"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
