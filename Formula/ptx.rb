class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.26"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.26/ptx-cli-darwin-amd64.zip"
      sha256 "9e9cc842992a0127e42456bb8eb3bbf9479e4d3b595a2438f612a82f7c54557f"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.26/ptx-cli-darwin-arm64.zip"
      sha256 "e001686ec52a185210b8ddd700e91b35a73d6060c04cb4976ae210e5df55e3cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.26/ptx-cli-linux-amd64.zip"
      sha256 "3532055b5cdf675525aeb75064d854e10472174294ccb0031b19a942331dcef8"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.26/ptx-cli-linux-arm64.zip"
      sha256 "670c5dd78edd1803bd205600656342bab370c3f8c5042ba2d30f4df3b84dd175"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
