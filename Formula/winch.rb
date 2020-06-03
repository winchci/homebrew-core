class Winch < Formula
  desc "Universal build and release tool"
  homepage "homebrew-winch"
  version "1.1.7"
  bottle :unneeded

  url "/Users/seth/Downloads/darwin-amd64.tgz"
  sha256 "57447a6c3fd4b7caf94b4506c3097ea6c99bc7c4edf273307100a31aaf8d53a0"

  def install
    bin.install "winch"
    bin.install "winch-go-errcheck"
    bin.install "winch-go-imports"
    bin.install "winch-go-lint"
    bin.install "winch-go-sec"
    bin.install "winch-go-shadow"
    bin.install "winch-go-staticcheck"
  end

  test do
    system "#{bin}/winch --version"
  end
end
