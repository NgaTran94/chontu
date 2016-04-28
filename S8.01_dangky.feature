@S8.01_dangky
Feature: S8.01_bat_loi_dang_ky
  @dang_ky
  Scenario: --- Đăng ký thất bại: Bỏ trống các trường dữ liệu ---
    Given I am on the "http://localhost/chontu/client/#/fst/home" page
    And I click on "register"
    And I click on "btnregister"
    And I wait for 1 seconds

  @dang_ky
  Scenario: --- Đăng ký thất bại: Nhập email đã đăng ký rồi ---
    Given I log in as "tienlq54cntt@gmail.com","Tien","Le Quyet","0903566472","localhost"
    And I wait for 1 seconds

  @dang_ky
  Scenario: --- Đăng ký thất bại: Nhập SĐT đã có trong CSDL ---
    Given I log in as "tien@gmail.com","Tien","Le Quyet","0903566472","localhost"
    And I wait for 1 seconds

  @dang_ky
  Scenario: --- Đăng ký thất bại: số điện thoại chứa ký tự quá ít ---
    Given I log in as "tien@gmail.com","Tien","Le Quyet","01223454","localhost"
    And I wait for 1 seconds

  @dang_ky
  Scenario: --- Đăng ký thất bại: số điện thoại chứa ký tự quá nhiều ---
    Given I log in as "tien@gmail.com","Tien","Le Quyet","012234549876","localhost"
    And I wait for 1 seconds

  @dang_ky
  Scenario: --- Đăng ký thất bại: số điện thoại không đúng định dạng ---
    Given I log in as "tien@gmail.com","Tien","Le Quyet","9122345498","localhost"
    And I wait for 1 seconds

  @dangky
  Scenario: --- Đăng ký thất bại: firstname có ký tự đặc biệt ---
    Given I log in as "tien@gmail.com","Tien@","Le Quyet","01284542341","localhost"
    And I wait for 1 seconds

  @dangky
  Scenario: --- Đăng ký thất bại: firstname có ký tự số ---
    Given I log in as "tien@gmail.com","Tien12","Le Quyet","01283454234","localhost"
    And I wait for 1 seconds

  @dangky
  Scenario: --- Đăng ký thất bại: lasttname có ký tự đặc biệt ---
    Given I log in as "tien@gmail.com","Tiến","Le Quyet@","01284542349","localhost"
    And I wait for 1 seconds

  @dangky
    Scenario: --- Đăng ký thất bại: lastname có ký tự số ---
    Given I log in as "tien@gmail.com","Tien","Le Quyet12","01283454234","localhost"
    And I wait for 1 seconds
