class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.29"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.29/ptx-cli-darwin-amd64.zip"
      sha256 "e87806404cacd0e65646567b5ff12dc79e468e9030e6d62561b83ed151aab4bd"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.29/ptx-cli-darwin-arm64.zip"
      sha256 "199cc61c5eb58296e327237ea282b87de0aafe2843f8e599014f4a73829864c7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.29/ptx-cli-linux-amd64.zip"
      sha256 "b03b5417ec325e095652d61cae4b4b86c884ba5fee51758e47d97b62046be287"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.29/ptx-cli-linux-arm64.zip"
      sha256 "0764d1195fadf988c9bcaa71fcc42f23b1b4edb475c688b0c7e762f1758825f7"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
