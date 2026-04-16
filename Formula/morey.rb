class Morey < Formula
  desc "Compiled governance daemon for AI agents — Morey by Seawater"
  homepage "https://seawater.io/morey/"
  version "0.1.0"
  license :cannot_represent  # LicenseRef-Proprietary

  # Darwin-arm64 only for v0.1.0 private beta.
  # Linux and darwin-x86_64 builds will follow.
  on_macos do
    on_arm do
      url "https://seawater.io/releases/morey-0.1.0-darwin-arm64.tar.gz"
      sha256 "7b91bdae15eb066d68ae2201d8e84d2904e8ede18691ade6fbc30aa8e04e526e"
    end
    on_intel do
      odie "morey v0.1.0 does not yet ship a darwin-x86_64 build. Track progress at https://seawater.io/docs/quickstart/"
    end
  end

  on_linux do
    odie "morey v0.1.0 does not yet ship a Linux build. Track progress at https://seawater.io/docs/quickstart/"
  end

  def install
    bin.install "morey"
  end

  test do
    # Sanity test — the daemon should print a version and exit cleanly.
    output = shell_output("#{bin}/morey --version")
    assert_match "morey", output.downcase
  end
end
