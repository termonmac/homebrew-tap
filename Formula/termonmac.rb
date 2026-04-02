class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.1.0-123"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.1.0-123/termonmac-arm64.tar.gz"
    sha256 "3253e4cd1edf98b9d7224dde491a97fe26fc23bdba74d30eba25bb02b1637511"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.1.0-123/termonmac-x86_64.tar.gz"
    sha256 "6f6e1dd9d0853d592ffac04cb418884c97805ffe065677820e983edbf77abb0f"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
