class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.17"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.17/ptx-cli-darwin-amd64.zip"
      sha256 "94948e671636b0579281f7888c80f421c01abfbb1858afd7f28db8bf022eb167"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.17/ptx-cli-darwin-arm64.zip"
      sha256 "28896c10de1c97c962a2b9148b8ccbb8c2cddb1c4f9a4b0aa825b4a5a8efe771"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.17/ptx-cli-linux-amd64.zip"
      sha256 "fd7ee57b8e7b838a3226bfd02e0349f15c85b6d46e13ff8264627e20dc58a5d8"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.17/ptx-cli-linux-arm64.zip"
      sha256 "2f5a29e4ebb876f6aa7e17025422ae7349a0bd743960d32299a3985b5270ec0e"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
