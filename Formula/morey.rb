class Morey < Formula
  desc "Compiled governance daemon for AI agents — Morey by Seawater"
  homepage "https://seawater.io/morey/"
  version "0.3.0"
  license :cannot_represent  # LicenseRef-Proprietary

  on_macos do
    on_arm do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.0/morey-0.3.0-darwin-arm64.tar.gz"
      sha256 "75094e60bdb77eb01c00067de708367abe84bd4e8a6b677c1cf401985a29619e"
    end
    on_intel do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.0/morey-0.3.0-darwin-x86_64.tar.gz"
      sha256 "216658ea472123d7b02766e2a76c8089dc78b667abe01f12ef9ca4e7e3e66a47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.0/morey-0.3.0-linux-arm64.tar.gz"
      sha256 "e1922065d54b7c5359db830560bd090e6eba4abfbd2c01b350aac20eff0c230b"
    end
    on_intel do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.0/morey-0.3.0-linux-x86_64.tar.gz"
      sha256 "14b5efb39529125723101b9e3e8dab1ff9d84833d235c09101b9041f0226539d"
    end
  end

  def install
    bin.install "morey"
  end

  test do
    output = shell_output("#{bin}/morey --version")
    assert_match "morey", output.downcase
  end
end
