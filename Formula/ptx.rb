class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.21"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.21/ptx-cli-darwin-amd64.zip"
      sha256 "92276afe1571125e5a04f26987b3e2d7a84ef36f6d0a6f4135c9fd82b821d041"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.21/ptx-cli-darwin-arm64.zip"
      sha256 "64ff89c7dc592bcefa2ae82e38f69a52940ed37be64b8cf6025cafd23526bf7b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.21/ptx-cli-linux-amd64.zip"
      sha256 "b947978e9b812c26f790acde2a69b30ba741d74a6525fc7960efc993df3e8fcf"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.21/ptx-cli-linux-arm64.zip"
      sha256 "11612d3a345002bba899f7c80c3e88102cb8ce84a17b250e84e07b378e4b8cd4"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
