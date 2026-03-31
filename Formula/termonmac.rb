class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "1.1.0-121"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v1.1.0-121/termonmac-arm64.tar.gz"
    sha256 "4dce19fe6be87cb64d1f1f4791bff5cc80bba68ef493f12efae6106913aeae84"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v1.1.0-121/termonmac-x86_64.tar.gz"
    sha256 "07c730bd742f0a9f07571d3601ead20f315e236c951931e30cd0ddb4779a721e"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match "TermOnMac", shell_output("\#{bin}/termonmac version")
  end
end
