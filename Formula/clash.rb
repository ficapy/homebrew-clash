# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Clash < Formula
  desc "A rule-based tunnel in Go."
  homepage "https://github.com/Dreamacro/clash"
  url "https://github.com/Dreamacro/clash/releases/download/TUN/clash-darwin-amd64-v0.18.0-2-ga79f287.gz"
  version "0.18.0"
  sha256 "1080b7b3b165731217a003a94e5e40a87ee04424a192d7fd0bb2ab519a513568"



  # depends_on "cmake" => :build

  def install

    mv "clash-darwin-amd64", "clash"

    bin.install "clash"

  end

  plist_options :manual => "clash -d #{ENV["HOME"]}/.config/clash/"

  def plist; <<~EOS
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
    <dict>
      <key>KeepAlive</key>
      <true/>
      <key>RunAtLoad</key>
      <true/>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{bin}/clash</string>
        <string>-d</string>
        <string>#{ENV["HOME"]}/.config/clash/</string>
      </array>
    </dict>
  </plist>
  EOS
  end




  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test v2ray-core`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/clash", "-v"
  end
end
