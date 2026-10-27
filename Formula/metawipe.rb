class Metawipe < Formula
  desc "Strip metadata from images, HEIC, videos, PDFs and Office/OpenDocument files"
  homepage "https://github.com/risozkanady/metawipe"
  version "0.3.1b3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/risozkanady/metawipe/releases/download/v0.3.1b3/metawipe-0.3.1b3-macos-arm64.tar.gz"
      sha256 "ddd253a35727b353f0b2e52ea917b2ea7515cc112eeb4fef6a80585c8e2d4ba4"
    end
    on_intel do
      url "https://github.com/risozkanady/metawipe/releases/download/v0.3.1b3/metawipe-0.3.1b3-macos-x86_64.tar.gz"
      sha256 "1e11500473c460d746fd952fa8f5605e6ac7c293955d2eda6d0ba512c126c2b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/risozkanady/metawipe/releases/download/v0.3.1b3/metawipe-0.3.1b3-linux-x86_64.tar.gz"
      sha256 "d648c4cebae12dd530e76ddab61590b85a0da4b0b245bc6cf7f2a64408b716a5"
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
