class Winch < Formula
  desc "Universal build and release tool"
  homepage "https://github.com/winchci/winch"
  version "1.2.5"
  bottle :unneeded

  url "https://github.com/winchci/winch/releases/download/v1.2.5/darwin-amd64.tgz"
  sha256 "3b39c866449ad6c3e0dccf72f31d4546c0c88942600dc7ca211320cfc4f947b1"

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
