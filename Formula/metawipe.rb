class Metawipe < Formula
  desc "Strip metadata from images, HEIC, videos, PDFs and Office/OpenDocument files"
  homepage "https://github.com/risozkanady/metawipe"
  version "0.3.1b4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/risozkanady/metawipe/releases/download/v0.3.1b4/metawipe-0.3.1b4-macos-arm64.tar.gz"
      sha256 "199db647da0d0be040bd63e973581d9f06d5bbfd9ff4b1e9810592d576267a10"
    end
    on_intel do
      url "https://github.com/risozkanady/metawipe/releases/download/v0.3.1b4/metawipe-0.3.1b4-macos-x86_64.tar.gz"
      sha256 "aa900746a6ecfc8ed8983e8f712ec907287b688ef70266c5680b4dd7d6bd091a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/risozkanady/metawipe/releases/download/v0.3.1b4/metawipe-0.3.1b4-linux-x86_64.tar.gz"
      sha256 "e1f43d8a1db65646c9dccd03daa957a818a8489040e4bc00717fa8ad9de3aeb9"
    end
  end

  def install
    bin.install "metawipe"
  end

  def caveats
    "Videos need ffmpeg: brew install ffmpeg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metawipe --version")
  end
end
