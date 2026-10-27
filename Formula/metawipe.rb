class Metawipe < Formula
  desc "Strip metadata from images, HEIC, videos, PDFs and Office/OpenDocument files"
  homepage "https://github.com/risozkanady/metawipe"
  version "0.3.1b1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/risozkanady/metawipe/releases/download/v0.3.1b1/metawipe-0.3.1b1-macos-arm64.tar.gz"
      sha256 "41cafadd7c9bfb84930778cdd6b1e00e28436b1e00e36108d29ebdf9f42eecce"
    end
    on_intel do
      url "https://github.com/risozkanady/metawipe/releases/download/v0.3.1b1/metawipe-0.3.1b1-macos-x86_64.tar.gz"
      sha256 "06c30c2ab498353790832782e7c77032b2683ad2a2280163f951de18e98fb626"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/risozkanady/metawipe/releases/download/v0.3.1b1/metawipe-0.3.1b1-linux-x86_64.tar.gz"
      sha256 "7c5e413ba8a361ed66ea694e56f393e9a8dbfaf429e3e94e30e4fc94581bc260"
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
