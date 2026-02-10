class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.13"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.13/ptx-cli-darwin-amd64.zip"
      sha256 "fafee04365643b8402ce3b2800238c8841094fe1aaca3a1bc785814aa3928194"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.13/ptx-cli-darwin-arm64.zip"
      sha256 "829dde632770b86b298b698180c8f65286deae973a267d0302a621a6cf089b8a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.13/ptx-cli-linux-amd64.zip"
      sha256 "f308fc5e4a7636ea52b320cd372b5c98f34e6be8118ee442639f82b2a473716b"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.13/ptx-cli-linux-arm64.zip"
      sha256 "61fae3a9928ba9f62a7b896c5590b92624588a88f9348872c270bc3cd518d95a"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
