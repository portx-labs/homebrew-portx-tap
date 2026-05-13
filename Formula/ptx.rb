class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.23"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.23/ptx-cli-darwin-amd64.zip"
      sha256 "78ed4a426a879a8118d87e228e55b533633edcb33c35e06ebf73b3e60b3c01b2"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.23/ptx-cli-darwin-arm64.zip"
      sha256 "3eb841e35c32000ec065fe62574a29641b6ab1f6705df2a3d91e00cb21fc9532"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.23/ptx-cli-linux-amd64.zip"
      sha256 "f91a3feb18e55279bbbda57908dec59ba6046e50d0fd6278423c6907ad04db93"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.23/ptx-cli-linux-arm64.zip"
      sha256 "a8c2edfe0b2d1fd314457dd78c3566cc0b91c604f683631a9d018f25c1bddbe0"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
