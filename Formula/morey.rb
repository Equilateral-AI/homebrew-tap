class Morey < Formula
  desc "Compiled governance daemon for AI agents — Morey by Seawater"
  homepage "https://seawater.io/morey/"
  version "0.3.0"
  license :cannot_represent  # LicenseRef-Proprietary

  on_macos do
    on_arm do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.0/morey-0.3.0-darwin-arm64.tar.gz"
      sha256 "08cc668775acdacbde1d0f93836e3622639aab0d502c1840d9a43a04ba1c20fd"
    end
    on_intel do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.0/morey-0.3.0-darwin-x86_64.tar.gz"
      sha256 "52db76313b2c95e457412623d8d577d8b0cbc91e3d3cde009f2ab9b20b09a2d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.0/morey-0.3.0-linux-arm64.tar.gz"
      sha256 "73e5d2ec277cfb7813ffdccb3024105e206f29c9d13395d2135ac29bcf78baae"
    end
    on_intel do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.0/morey-0.3.0-linux-x86_64.tar.gz"
      sha256 "f9a678e5324fb193d5d01469434374e2a5b824915c18d01c7fa2c4f20539948a"
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
