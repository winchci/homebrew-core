class Winch < Formula
  desc "Universal build and release tool"
  homepage "https://github.com/winchci/winch"
  version "1.3.6"
  bottle :unneeded

  url "https://github.com/winchci/winch/releases/download/v1.3.6/darwin-amd64.tgz"
  sha256 "570cbe2fa1833af293b08d0187eda11ae7839a9445b011c6bf433b258b6f8471"

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
