class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.4.0-301"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.4.0-301/termonmac-arm64.tar.gz"
    sha256 "ed64cb1724ad6dc5b8a7fbba00889e35e2c672d33abba49c2326548f6579be0c"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.4.0-301/termonmac-x86_64.tar.gz"
    sha256 "b50e7ed71ccb5fdc1b085306254f7792472e03a7c84122b0634380abb43f13c5"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
