class ZohodeskCli < Formula
  desc 'CLI for Zoho Desk API'
  homepage 'https://github.com/jrodriguezruibal/zohodesk-cli'
  version '0.1.2'
  license 'MIT'

  on_macos do
    on_intel do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_darwin_amd64.tar.gz"
      sha256 'f80fbd4d6808595cdf181d7b1e625f8858fcaf996a8c4f5bf7a723cc9c44c65e'
    end
    on_arm do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_darwin_arm64.tar.gz"
      sha256 '61ffa3caef11c83e9ce94e29a24b384b9763d74d5092853e0c92afd3357b3b9d'
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_linux_amd64.tar.gz"
      sha256 'f0d2f091049879a3154a7cd240bda5131eca4ba75e7afbd1d0e7baf43228e888'
    end
    on_arm do
      url "https://github.com/jrodriguezruibal/zohodesk-cli/releases/download/v#{version}/zohodesk-cli_#{version}_linux_arm64.tar.gz"
      sha256 'b2b4b006b761d12cd47e4acbc8f18e1498f785f61eb455d728dc4e9ca17f6937'
    end
  end

  def install
    bin.install 'zohodesk-cli'
  end

  test do
    assert_match 'zohodesk-cli', shell_output("#{bin}/zohodesk-cli version")
  end
end
