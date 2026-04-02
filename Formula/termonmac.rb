class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.2.0-126"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-126/termonmac-arm64.tar.gz"
    sha256 "d2b541389e37ab531980a58c62f81b244ecb3bee17a57420e268fbc6d62e5cca"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.2.0-126/termonmac-x86_64.tar.gz"
    sha256 "c720338e5956956b5c3dc84e4704bc5baf9f8df85c68352d88d8d4763af31110"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
