require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "thankyou" do
    mail = UserMailer.thankyou
    assert_equal "Thankyou", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
