class ZohodeskCli < Formula
  desc 'CLI for Zoho Desk API'
  homepage 'https://github.com/jrodriguezruibal/zohodesk-cli'
  version '0.2.0'
  license 'MIT'

  on_macos do
    on_intel do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_darwin_amd64.tar.gz"
      sha256 'a11d8080edc5812185ac857b02dea0c54edc4aef18648397a997fd89757af5ed'
    end
    on_arm do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_darwin_arm64.tar.gz"
      sha256 '69837ff53227d98523894effb1dec5e12e3edc83b32c503311fa352d39e45e57'
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_linux_amd64.tar.gz"
      sha256 '4d33cfacdabdca5e6b166da95b0911cce6fe70a6c40d2af45579b42b94c52ecf'
    end
    on_arm do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_linux_arm64.tar.gz"
      sha256 '19f2f3bb22db4f910e4ecfadf2b6a52a7b8033b21aff3a1cd7587ef9dc0627ce'
    end
  end

  def install
    bin.install 'zohodesk-cli'
  end

  test do
    assert_match 'zohodesk-cli', shell_output("#{bin}/zohodesk-cli version")
  end
end
