class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.15"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.15/ptx-cli-darwin-amd64.zip"
      sha256 "beea506c959a59c24517a62c1aa93c8246edb809bcf8554d44fa923a12b77c4c"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.15/ptx-cli-darwin-arm64.zip"
      sha256 "0f9cdd1fa767741dd8e593d16f438e58ad46051335be3e3005ba7d732bdbeec2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.15/ptx-cli-linux-amd64.zip"
      sha256 "652f831d50366f1240893d6a083d11cdf817bda60211cb8d50646877aab363bf"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.15/ptx-cli-linux-arm64.zip"
      sha256 "160a27e5ccfe1f0212792e63187f14ea7ecd3ddd3e827c20a00fadaf04b2aa2a"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
