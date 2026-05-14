class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.24"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.24/ptx-cli-darwin-amd64.zip"
      sha256 "8ea27dc3cd9a2a086accb2bee39bd4a9c524aca393d8929c14373cb879c26f18"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.24/ptx-cli-darwin-arm64.zip"
      sha256 "58a8e9572a69709c1506ef60a4cd8acceb43914f777809d600beaf8f4e78bfdf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.24/ptx-cli-linux-amd64.zip"
      sha256 "4493bd9866ea25e54b5c0207c17e7ba9f20e102ba89861a4f150ea6e70d8252c"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.24/ptx-cli-linux-arm64.zip"
      sha256 "113cbfbcf1a51bf3e7761981f42b77647fc495e9f0c2bcf85ebbff638d2a68e8"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
