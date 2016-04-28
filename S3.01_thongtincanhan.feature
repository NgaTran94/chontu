@S3.01_thongtincanhan
Feature: S3.01_thong_tin_ca_nhan
  @sua_thong_tin_ca_nhan
    Scenario: --- Sửa thành công ---
      Given I am on the "http://localhost/chontu/client/#/fst/home" page
      And I click on "information"
      And I click on "username"
      And I set text on "username" with "tienlq54cntt@gmail.com"
      And I click on "password"
      And I set text on "password" with "1234"
      And I click on "btnlogin"
      And I click on "btnok"
      And I click on "phone"
      And I set text on "phone" with "01665177313"
      And I click on "update"
      And I click on "btnok"
      Given I am on the "http://localhost/chontu/client/#/fst/home" page
      And I click on "btnlogout"
      And I click on "btnok"
      And I click on "information"
      And I click on "username"
      And I set text on "username" with "tienlq54cntt@gmail.com"
      And I click on "password"
      And I set text on "password" with "1234"
      And I click on "btnlogin"
      And I click on "btnok"
      And I wait for 2 seconds

    @sua_thong_tin_ca_nhan
    Scenario: --- Sửa firstname/ lastname có ký tự đặc biệt ---
      Given I am on the "http://localhost/chontu/client/#/fst/home" page
      And I click on "information"
      And I click on "username"
      And I set text on "username" with "tienlq54cntt@gmail.com"
      And I click on "password"
      And I set text on "password" with "1234"
      And I click on "btnlogin"
      And I click on "btnok"
      And I click on "firstname"
      And I set text on "firstname" with "Tiến@"
      And I click on "lastname"
      And I set text on "lastname" with "Le Quyet12"
      And I click on "update"
      And I wait for 2 seconds

    @sua_thong_tin_ca_nhan
    Scenario: --- Sửa firstname/ lastname có ký tự đặc biệt ---
      Given I am on the "http://localhost/chontu/client/#/fst/home" page
      And I click on "information"
      And I click on "username"
      And I set text on "username" with "tienlq54cntt@gmail.com"
      And I click on "password"
      And I set text on "password" with "1234"
      And I click on "btnlogin"
      And I click on "btnok"
      And I click on "firstname"
      And I set text on "firstname" with "Tien123"
      And I click on "lastname"
      And I set text on "lastname" with "Le Quyet@$%"
      And I click on "update"
      And I wait for 2 seconds


    @sua_thong_tin_ca_nhan
    Scenario: --- Sửa số điện thoại có ký tự quá ít ---
    Given I am on the "http://localhost/chontu/client/#/fst/home" page
      And I click on "information"
      And I click on "username"
      And I set text on "username" with "tienlq54cntt@gmail.com"
      And I click on "password"
      And I set text on "password" with "1234"
      And I click on "btnlogin"
      And I wait for 1 seconds
      And I click on "btnok"
      And I click on "phone"
      And I wait for 1 seconds
      And I set text on "phone" with "01667123"
      And I click on "update"
      And I wait for 2 seconds

  @sua_thong_tin_ca_nhan
  Scenario: --- Sửa số điện thoại không đúng định dạng ---
    Given I am on the "http://localhost/chontu/client/#/fst/home" page
    And I click on "information"
    And I click on "username"
    And I wait for 1 seconds
    And I set text on "username" with "tienlq54cntt@gmail.com"
    And I click on "password"
    And I wait for 1 seconds
    And I set text on "password" with "1234"
    And I click on "btnlogin"
    And I wait for 1 seconds
    And I click on "btnok"
    And I click on "phone"
    And I wait for 1 seconds
    And I set text on "phone" with "9876543210"
    And I click on "update"
    And I wait for 2 seconds


  @sua_thong_tin_ca_nhan
  Scenario: --- Sửa số điện thoại có ký tự quá nhiều ---
    Given I am on the "http://localhost/chontu/client/#/fst/home" page
    And I click on "information"
    And I click on "username"
    And I wait for 1 seconds
    And I set text on "username" with "tienlq54cntt@gmail.com"
    And I click on "password"
    And I wait for 1 seconds
    And I set text on "password" with "1234"
    And I click on "btnlogin"
    And I wait for 1 seconds
    And I click on "btnok"
    And I click on "phone"
    And I wait for 1 seconds
    And I set text on "phone" with "016671230987"
    And I click on "update"
    And I wait for 2 seconds