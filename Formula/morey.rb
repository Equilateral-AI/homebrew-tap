class Morey < Formula
  desc "Compiled governance daemon for AI agents — Morey by Seawater"
  homepage "https://seawater.io/morey/"
  version "0.3.1"
  license :cannot_represent  # LicenseRef-Proprietary

  on_macos do
    on_arm do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.1/morey-0.3.1-darwin-arm64.tar.gz"
      sha256 "86210762802e38dc8029887b5a35e06e3304dcf68ae289d08239d7490abdfbd5"
    end
    on_intel do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.1/morey-0.3.1-darwin-x86_64.tar.gz"
      sha256 "d4207411602496eff74257b544c713db670d4746a3f94d770b553deb59db484a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.1/morey-0.3.1-linux-arm64.tar.gz"
      sha256 "1639ec2ee92dd86e36ea57b2c91d6b78462f73543e05f0fb7aa6c59d93e98add"
    end
    on_intel do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.1/morey-0.3.1-linux-x86_64.tar.gz"
      sha256 "af9e101061c5bfce51584b379ccff411087a5d1ebc58b7134495a152d862d087"
    end
  end

  def install
    bin.install "morey"
    bin.install "morey-test-inject"
    bin.install "morey-test-verify"
  end

  test do
    output = shell_output("#{bin}/morey --version")
    assert_match "morey", output.downcase
  end
end
