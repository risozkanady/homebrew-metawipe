class Metawipe < Formula
  desc "Strip metadata from images, HEIC, videos, PDFs and Office/OpenDocument files"
  homepage "https://github.com/risozkanady/metawipe"
  version "0.3.1b2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/risozkanady/metawipe/releases/download/v0.3.1b2/metawipe-0.3.1b2-macos-arm64.tar.gz"
      sha256 "75083ddffcfb0c644eadfd4f305d7d87d4de084a7a4ee602b493f033b82309fb"
    end
    on_intel do
      url "https://github.com/risozkanady/metawipe/releases/download/v0.3.1b2/metawipe-0.3.1b2-macos-x86_64.tar.gz"
      sha256 "a9972497393c82f883e56c20e16f4cccde7eb569ed4f2bc5e5cc75a1fc13bfcd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/risozkanady/metawipe/releases/download/v0.3.1b2/metawipe-0.3.1b2-linux-x86_64.tar.gz"
      sha256 "0993ed481841ca286913b27e9275614c656cdebc0b8fa71262ebf2f42669eb7a"
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
