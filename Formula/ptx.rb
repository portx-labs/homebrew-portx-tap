class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.12"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.12/ptx-cli-darwin-amd64.zip"
      sha256 "1085eecea064f1e57017ff01b45fd7c4f5cc9735e2add626ea36d83021843d55"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.12/ptx-cli-darwin-arm64.zip"
      sha256 "8cada2fc4ab77aa34078a1fe80744747d6a7a207927f8f6f459e09dfe0eabcdc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.12/ptx-cli-linux-amd64.zip"
      sha256 "2d6590a91f757f83d7f3a2e85f653e2cca0433a1ce5729699370169da4756295"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.12/ptx-cli-linux-arm64.zip"
      sha256 "cefab18713c73b981b845c276f21f2eda536612e667beb24e87c93ad2ad08c0d"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
