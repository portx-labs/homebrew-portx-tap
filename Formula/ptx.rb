class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.22"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.22/ptx-cli-darwin-amd64.zip"
      sha256 "2787348bb534812617a2a6713789a75355c564f5259770376fc106aed9b45771"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.22/ptx-cli-darwin-arm64.zip"
      sha256 "073b703c4f770363441af3208830044c84d536dcf836852e0f001dd873b858af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.22/ptx-cli-linux-amd64.zip"
      sha256 "2755e1ce5cd9d3efabeb2b54e5cd9a6796d394dcfd292ecf3d795abd96eadf89"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.22/ptx-cli-linux-arm64.zip"
      sha256 "b19154e351284b3db3b0e4e511e1b2ca571c4d709673adcc77a36e85afae03d9"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
