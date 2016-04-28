Feature: 3.04_dangban
  @S3.04_dangban
  Scenario: --- dang ban san pham ---
    Given I am on the "http://localhost/chontu/client/#/fst/home" page
    And I click on "information"
    And I click on "username"
    And I set text on "username" with "tienlq54cntt@gmail.com"
    And I click on "password"
    And I set text on "password" with "1234"
    And I click on "btnlogin"
    And I click on "btnok"
    Given I am on the "http://localhost/chontu/client/#/fst/home" page
    And I click on "btnsell"
    And I click on "cmbcategory"
    And I select the second option from "loai_ao"
    And I click on "size"
    And I select the size option from "loai_size"
    And I click on "cmbcolor"
    And I select the color option from "loai_color"
    And I click on "product_name"
    And I set text on "product_name" with "áo sơ mi"
    And I click on "quality"
    And I select the quality option from "loai_quality"
    And I click on "cost"
    And I set text on "cost" with "50000"
    And I click on "description"
    And I set text on "description" with "áo mới"
    And I click on "image"
    And  I wait for 1 seconds
    Then I upload the file
    And I click on "sell"
    And I wait for 3 seconds
