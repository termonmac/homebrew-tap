class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.0.0-105"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-105/termonmac-arm64.tar.gz"
    sha256 "5c7299be0774ae90f17a023625eb73cfab9a655534d2cf5d41ecfba9e3fbd424"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-105/termonmac-x86_64.tar.gz"
    sha256 "6b4366e8261015902f3b5d25fe293b483ac9ae73de672fca002591e433bc9bb3"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
