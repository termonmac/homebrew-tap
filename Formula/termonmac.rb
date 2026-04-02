class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.1.0-124"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.1.0-124/termonmac-arm64.tar.gz"
    sha256 "943ae36991c0a6dc44cdcda8a3d94d0261c3cf59ee334f4292944095570f6ff2"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.1.0-124/termonmac-x86_64.tar.gz"
    sha256 "bc22be924dd3a86c38570d16c946ee97edb9222257aea63a42d290bd461bd94f"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
