class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.0.0-103"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-103/termonmac-arm64.tar.gz"
    sha256 "c6f77c00161042b5bde57b426ef774d64a88ccdb49b0795c9a693de3e28fa3ea"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.0.0-103/termonmac-x86_64.tar.gz"
    sha256 "e87b24f84cd0261acb26fa43ea8aec658a90cb1b4f0b66eb1c979d4a8fb7450a"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
