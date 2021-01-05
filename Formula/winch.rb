class Winch < Formula
  desc "Universal build and release tool"
  homepage "https://github.com/winchci/winch"
  version "1.4.7"
  bottle :unneeded

  url "https://github.com/winchci/winch/releases/download/v1.4.7/darwin-amd64.tgz"
  sha256 "00ef92555429e2d5fa0ceb7dfbcb00c8e0eb0c7d9653b980598e9394009003a9"

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
