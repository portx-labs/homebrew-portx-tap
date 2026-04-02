class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.18"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.18/ptx-cli-darwin-amd64.zip"
      sha256 "30e002ffda53405672e0acc58de64847bfc80e7d276f853ee52d6fa84d46cd84"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.18/ptx-cli-darwin-arm64.zip"
      sha256 "36868e9e2b9d311105b75bbffc7fa844c3d49609a59461240db6f5bfe0efd73f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.18/ptx-cli-linux-amd64.zip"
      sha256 "dcfc66082e1d15af2f3dc0247b4b5b73d76a7f94ec39d06a921c82dab662e5ca"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.18/ptx-cli-linux-arm64.zip"
      sha256 "35524845194bccffa45e400cee5005f8568e63ba9a535fea55fe15642e37792f"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
