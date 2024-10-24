  class OgcCli < Formula
    desc "ogc"
    homepage "https://github.com/saibit-tech/open-gpu-cloud"
    version "0.1.6"

    if OS.mac? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.1.6/ogc_cli-darwin_amd64"
      sha256 "4d8322c7cf1ffa042d4432dc482fd9a347ff889d1a96740c98a0192594a610ac"
    end

    if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.1.6/ogc_cli-darwin_arm64"
      sha256 "8c99063737cb8caafba89d82eda457f42985c6990a4ffa8e11cb29595cb27d97"
    end

    if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.1.6/ogc_cli-linux_amd64"
      sha256 "298b7dc642c7dc8a34ad63aa640c02955e5c4d5b392c05330adfcc620f442dab"
    end

    if OS.linux? && Hardware::CPU.arm?
      url "https://github.com/saibit-tech/homebrew-tap/releases/download/ogc-cli-v0.1.6/ogc_cli-linux_arm64"
      sha256 "b315524eae0175f39a6fcad7a51dd0b165bc8742e31989c3b01bd2bcd9d42d6d"
    end

    def install
      if OS.mac? && Hardware::CPU.intel?
        bin.install "ogc_cli-darwin_amd64" => "ogc"
      end
      if OS.mac? && Hardware::CPU.arm?
        bin.install "ogc_cli-darwin_arm64" => "ogc"
      end

      if OS.linux? && Hardware::CPU.intel?
        bin.install "ogc_cli-linux_amd64" => "ogc"
      end

      if OS.linux? && Hardware::CPU.arm?
        bin.install "ogc_cli-linux_arm64" => "ogc"
      end
    end

    test do
      assert_match version.to_s, shell_output("#{bin}/ogc --version")
    end
 end
