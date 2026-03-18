class ZohodeskCli < Formula
  desc 'CLI for Zoho Desk API'
  homepage 'https://github.com/jrodriguezruibal/zohodesk-cli'
  version '0.2.1'
  license 'MIT'

  on_macos do
    on_intel do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_darwin_amd64.tar.gz"
      sha256 '44e6f4a555a3e1f193b3f85980aac0412efa10eacd7478e4190ce1d3fa8a7920'
    end
    on_arm do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_darwin_arm64.tar.gz"
      sha256 '035747046f3ca61e9692562ed31d8d0264e56a03d4fa73e6d8f7c2f2ec2f16e8'
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_linux_amd64.tar.gz"
      sha256 'ca4eab4e547fad0225dc6f0fc64194bebad0a40908aed9c19c181added8be0e1'
    end
    on_arm do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_linux_arm64.tar.gz"
      sha256 '838d2125f72820db68656626f6f6da82669e1678d3105e666ae5a851ccd68939'
    end
  end

  def install
    bin.install 'zohodesk-cli'
  end

  test do
    assert_match 'zohodesk-cli', shell_output("#{bin}/zohodesk-cli version")
  end
end
