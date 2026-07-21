class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.28"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.28/ptx-cli-darwin-amd64.zip"
      sha256 "fb26373816523d7abbb9c538b383c93b88b977af36e6be6ecefff05a4aa04a78"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.28/ptx-cli-darwin-arm64.zip"
      sha256 "82eb7f09e7369fff3bc621187f40095c01d276db330d13720cce8f60bc955a0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.28/ptx-cli-linux-amd64.zip"
      sha256 "b823e118a8f8b4878b80b3d6d32226e58e655d9de4483d408b85009212e1091c"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.28/ptx-cli-linux-arm64.zip"
      sha256 "24af57284eb4dd8a93545afc9e1f9786c40b2d739d17774fab76f6e1a37794e5"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
