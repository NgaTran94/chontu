@S3.03_dangky
Feature: Đăng ký tài khoản
 
	@dang_ky3.03
  Scenario: --- Đăng ký thành công ---
	Given I log in as "linh123@gmail.com","Linh","Nguyen Thi","0903594915","localhost" 
	And I wait for 2 seconds

   @dang_ky3.03
  Scenario: --- Đăng ký thất bại: Nhập email không đúng định dạng ---
    Given I log in as "linh99","Linh","Nguyen Thi","0903594915","localhost" 
	And I wait for 2 seconds





