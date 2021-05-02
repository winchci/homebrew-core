class Winch < Formula
  desc "Universal build and release tool"
  homepage "https://github.com/winchci/winch"
  version "1.8.5"
  bottle :unneeded

  url "https://github.com/winchci/winch/releases/download/v1.8.5/darwin-amd64.tgz"
  sha256 "c03e6fcda8d56e3ebd52da747ea29788cb589ff38aed18e40093e2bc3308b418"

  def install
    bin.install "winch"

  end

  test do
    system "#{bin}/winch --version"

  end
end
