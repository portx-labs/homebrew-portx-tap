class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.11/ptx-cli-darwin-amd64.zip"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.11/ptx-cli-darwin-arm64.zip"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.11/ptx-cli-linux-amd64.zip"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.11/ptx-cli-linux-arm64.zip"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
