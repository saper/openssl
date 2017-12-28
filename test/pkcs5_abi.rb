# frozen_string_literal: false
require 'test/unit'
require 'openssl.so'

if defined?(OpenSSL)

class OpenSSL::TestPKCS5ABI < Test::Unit::TestCase
  def test_pkcs5_abi_compatibility
    expected = OpenSSL::PKCS5.pbkdf2_hmac("password", "salt", 1, 20, "sha1")
    assert_equal(expected, OpenSSL::PKCS5.pbkdf2_hmac_sha1("password", "salt", 1, 20))
  end
end

end
