class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.20"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.20/ptx-cli-darwin-amd64.zip"
      sha256 "f02f55e0d335e60e746636c8ed817f458236b88d50954eb1ee01ab4a83519fc3"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.20/ptx-cli-darwin-arm64.zip"
      sha256 "211e1eaa3e0662e52498f9553f698633eed953092a098e796034845f4c4ea276"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.20/ptx-cli-linux-amd64.zip"
      sha256 "0f50e20355907387ce63145bec147db4a0d10d81b891637e96858fb6bc51955e"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.20/ptx-cli-linux-arm64.zip"
      sha256 "5e178311c4fdb7a07aacf6469a81d51a819808dab46ee4e45a52eb8b7f47dcfa"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
