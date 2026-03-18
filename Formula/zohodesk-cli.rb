class ZohodeskCli < Formula
  desc 'CLI for Zoho Desk API'
  homepage 'https://github.com/jrodriguezruibal/zohodesk-cli'
  version '0.1.1'
  license 'MIT'

  on_macos do
    on_intel do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_darwin_amd64.tar.gz"
      sha256 'df8b2b2e697cb91586f666141bdf8cdf01c8abb1f608b9b56263555dffc5d6d6'
    end
    on_arm do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_darwin_arm64.tar.gz"
      sha256 '8e8b7d94c8298c0f3790995d68b7631f199285704220ceb4edb761d75e890755'
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_linux_amd64.tar.gz"
      sha256 '752e00c5d6793263b0e26d648ebb2d28271ce53002b87f9dd46d1aaf0653a807'
    end
    on_arm do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_linux_arm64.tar.gz"
      sha256 'dd71636f293ee709bc204f8a12fa5c6872047b2d9bd445263c43b54c29ae0ac1'
    end
  end

  def install
    bin.install 'zohodesk-cli'
  end

  test do
    assert_match 'zohodesk-cli', shell_output("#{bin}/zohodesk-cli version")
  end
end
