class Winch < Formula
  desc "Universal build and release tool"
  homepage "https://github.com/winchci/winch"
  version "1.2.4"
  bottle :unneeded

  url "https://github.com/winchci/winch/releases/download/v1.2.4/darwin-amd64.tgz"
  sha256 "5b3801675da0c228e74eb8d5afb6f81db4f6e4cdd9e9f48c2ec8f9af3b7f94b6"

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
