class Termonmac < Formula
  desc "Remote terminal access to your Mac from iOS"
  homepage "https://termonmac.com"
  version "0.1.0"
  license :cannot_represent

  on_arm do
    url "https://github.com/termonmac/termonmac/releases/download/v0.1.0/termonmac-arm64.tar.gz"
    sha256 "44dd833666e207af6ad4e637ebd45c95824bb3f7c2379f5981bc63b32badaca6"
  end
  on_intel do
    url "https://github.com/termonmac/termonmac/releases/download/v0.1.0/termonmac-x86_64.tar.gz"
    sha256 "f01831e18064896f9a9636496844ce5ac72121e0686db1ffef32e1ed524f1181"
  end

  def install
    bin.install "termonmac"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/termonmac version")
  end
end
