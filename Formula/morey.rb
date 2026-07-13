class Morey < Formula
  desc "Compiled governance daemon for AI agents — Morey by Seawater"
  homepage "https://seawater.io/morey/"
  version "0.2.0"
  license :cannot_represent  # LicenseRef-Proprietary

  on_macos do
    on_arm do
      url "https://seawater.io/releases/morey-0.2.0-darwin-arm64.tar.gz"
      sha256 "9774fba1374c03c590772530c149ec1f77ba5049151532c69cc14632bacf11d4"
    end
    on_intel do
      url "https://seawater.io/releases/morey-0.2.0-darwin-x86_64.tar.gz"
      sha256 "00cd8f4c0e38f452aba9a66d8f3a8e88276056cef8de1e239a7d0b415e9174b3"
    end
  end

  on_linux do
    on_arm do
      url "https://seawater.io/releases/morey-0.2.0-linux-arm64.tar.gz"
      sha256 "bcfd6d3dcee5e86686c32f21e8ea86d0aa0b435119744ec4f3ce29d3993e1ac9"
    end
    on_intel do
      url "https://seawater.io/releases/morey-0.2.0-linux-x86_64.tar.gz"
      sha256 "de2202aa04c0e6a749480c521f9419379735ea7cfb5891730a41a26ef9f5510d"
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
