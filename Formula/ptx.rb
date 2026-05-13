class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.22"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.22/ptx-cli-darwin-amd64.zip"
      sha256 "12efbd38d0a6d46e09898cd48c9ecdbd4cf10b6692574b4512c45bbf6e8a5edd"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.22/ptx-cli-darwin-arm64.zip"
      sha256 "ad1441329b31c69f0ca3527f1542c11986f50776ce677880bc4de2d861dcec33"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.22/ptx-cli-linux-amd64.zip"
      sha256 "a4ff6717ab7e2f7245355816d095e6ab4007b660b8c2956bda5becbeacdde25d"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.22/ptx-cli-linux-arm64.zip"
      sha256 "d5810bada2365364c7b502cc72d1342c715e8e05701c26fc0d1592a378796773"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
