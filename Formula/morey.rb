class Morey < Formula
  desc "Compiled governance daemon for AI agents — Morey by Seawater"
  homepage "https://seawater.io/morey/"
  version "0.2.0"
  license :cannot_represent  # LicenseRef-Proprietary

  on_macos do
    on_arm do
      url "https://seawater.io/releases/morey-0.2.0-darwin-arm64.tar.gz"
      sha256 "cb16dabc547d06aafc404999b56c732c86f8aae42bed208c9856125b5fc0ad71"
    end
    on_intel do
      url "https://seawater.io/releases/morey-0.2.0-darwin-x86_64.tar.gz"
      sha256 "0608c639c1f21735261aa613f14d28d87fdd6e6b11ff1cef2e12e42a85a52973"
    end
  end

  on_linux do
    on_arm do
      url "https://seawater.io/releases/morey-0.2.0-linux-arm64.tar.gz"
      sha256 "3b51b09201dfa07cb605cef3812cfca2d464e8a1dc28716b464b049580c3019d"
    end
    on_intel do
      url "https://seawater.io/releases/morey-0.2.0-linux-x86_64.tar.gz"
      sha256 "273092bd0b93b25a50bf1b85c4304a85904a47adce49fb6ae13c4290dac47f6a"
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
