class Winch < Formula
  desc "Universal build and release tool"
  homepage "https://github.com/winchci/winch"
  version "1.3.0"
  bottle :unneeded

  url "https://github.com/winchci/winch/releases/download/v1.3.0/darwin-amd64.tgz"
  sha256 "f4153c642957eb388ae89854aecd6c7f491526e79ac8c03c0993f6f0e459f709"

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
