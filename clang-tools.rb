require 'formula'

CLANG_TOOLS_VERSION = '3.4.20140401'
class ClangTools < Formula
  homepage 'http://llvm.org/'
  url 'https://github.com/val00274/clang-tools.git', :tag => "v#{CLANG_TOOLS_VERSION}"
  sha1 '1b43cc7827b9fa4e017614f2eb17bc35998d461c'
  head 'https://github.com/val00274/clang-tools.git', :branch => 'master'
  version CLANG_TOOLS_VERSION

  skip_clean 'bin'

  def install
    prefix.install 'bin'

    [
      "bugpoint",
      "clang-format",
      "clang-tblgen",
      "clang-apply-replacements",
      "clang-modernize",
      "clang-tidy",
      "clang-check",
      "clang-query",
      "diagtool",
    ].each do |command|
      (bin+command).chmod 0755
    end
  end
end

