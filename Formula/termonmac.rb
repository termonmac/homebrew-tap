class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.2.0-130"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-130/termonmac-arm64.tar.gz"
    sha256 "2429c993812fbe149a87ca5a66bea5921dfc73dd15e2fae7f0e8fa7c0c6a6a9a"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-130/termonmac-x86_64.tar.gz"
    sha256 "80d27fb0b0bf66cbcd65b9f365be091aa3e4b78a0c19d59510738cdfcd9ee9f5"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
