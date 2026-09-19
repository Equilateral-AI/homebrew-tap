class Morey < Formula
  desc "Compiled governance daemon for AI agents — Morey by Seawater"
  homepage "https://seawater.io/morey/"
  version "0.3.0"
  license :cannot_represent  # LicenseRef-Proprietary

  on_macos do
    on_arm do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.0/morey-0.3.0-darwin-arm64.tar.gz"
      sha256 "96c7146e7e89c43b5a0a69972e1329f3d1311d4f68bab32e21dd0034959d1e86"
    end
    on_intel do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.0/morey-0.3.0-darwin-x86_64.tar.gz"
      sha256 "15799affe51f3d46582b849aa709fa7fea460dd9652a7f232512194661b2b450"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.0/morey-0.3.0-linux-arm64.tar.gz"
      sha256 "f3762177c6155950abbdc8b8c17266a1eb89058eefff776cd4cf3bd9e6bcdbca"
    end
    on_intel do
      url "https://github.com/Equilateral-AI/morey-releases/releases/download/v0.3.0/morey-0.3.0-linux-x86_64.tar.gz"
      sha256 "e09cc824f2583d3a63ca81b066809c7f1dbfa013763e7ce2ef2fc31fb8f3fd5c"
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
