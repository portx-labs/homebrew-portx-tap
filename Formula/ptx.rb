class Ptx < Formula
  desc "PortX Platform CLI - connect to clusters and manage your apps"
  homepage "https://github.com/portx-labs/ptx-cli"
  version "1.0.25"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.25/ptx-cli-darwin-amd64.zip"
      sha256 "6598c9f682e9a94b0ec25be567cde68e0d1c39bcc62d65057ec0535382f323f2"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.25/ptx-cli-darwin-arm64.zip"
      sha256 "cb63c28ae2b609260bf5a30a928cf45614ec6537630eef41d83f8a065e41fa96"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.25/ptx-cli-linux-amd64.zip"
      sha256 "18327b0813228900fd0397221740f2b64034b7f29f52fb6f055355fcfcaab198"
    end
    on_arm do
      url "https://github.com/portx-labs/ptx-cli/releases/download/v1.0.25/ptx-cli-linux-arm64.zip"
      sha256 "4258b5a2799146dc09cb60bc672f082c95d9c5befe45286688311b61c18cb9ce"
    end
  end

  def install
    bin.install "ptx"
  end

  test do
    assert_match "Version:", shell_output("#{bin}/ptx --version")
  end
end
