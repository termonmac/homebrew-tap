class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.1.0-120"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.1.0-120/termonmac-arm64.tar.gz"
    sha256 "eb2131d6ccf30d8e263bf5ea948a91fd8d7cadc601b72a7f398edbd8dc7187fe"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.1.0-120/termonmac-x86_64.tar.gz"
    sha256 "4dd419ab34d14cc49b3a9298b49030afbda7ae9fed69870d09337c1e0423e6d2"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
