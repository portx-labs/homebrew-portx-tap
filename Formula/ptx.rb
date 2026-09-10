class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.30"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.30/ptx-cli-darwin-amd64.zip"
      sha256 "c0dac352bde9f477a1a6328eb1ccdf0cbcaddf21e1bf235e7960796bf01937df"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.30/ptx-cli-darwin-arm64.zip"
      sha256 "4faeb0d7eb53bda392d10a0de1b5577d6c24831f7d31b9b780cd3686841f473c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.30/ptx-cli-linux-amd64.zip"
      sha256 "59b7b39f1f78f87875b7ec24450e50e584221a353cac015ea7b85b50f6991107"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.30/ptx-cli-linux-arm64.zip"
      sha256 "f1a82e2299c8cc9d0b9c1c20952930f81fbb0fe1cd4368f274429a177862bb09"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
