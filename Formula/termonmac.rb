class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.3.0-200"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.3.0-200/termonmac-arm64.tar.gz"
    sha256 "60f1b604505e24afe7f6175d3aedf6e39effcc8f16fbb5678c3aa2a727364526"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.3.0-200/termonmac-x86_64.tar.gz"
    sha256 "8fe1396f577f1eb3bfd756f6697537e186355abaaaf505c730ed934ec4270526"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
