class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.27"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.27/ptx-cli-darwin-amd64.zip"
      sha256 "6a169d7177ae908ad2cbb741b591b1228963ba32481d8e54fb5bf63a58215c50"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.27/ptx-cli-darwin-arm64.zip"
      sha256 "0a2d37006b4650c05016b4ebc75ff9ac65acd5a1fbbfae35546f42cc212fcb37"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.27/ptx-cli-linux-amd64.zip"
      sha256 "09200c1bacf574a858a957f5c9256b92a2f99b70cbc610e12be6cf2a306c41a5"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.27/ptx-cli-linux-arm64.zip"
      sha256 "ffdfe743eecd1f2942817ad981a4469424c3e639e3a034c6c5c96b8e6b1eaa25"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
