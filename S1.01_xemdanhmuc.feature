@S1.01_xemdanhmuc
  Feature: S1.01_xem_san_pham_theo_danh_muc
    @xem_san_pham_theo_danh_muc
    Scenario: Xem san pham ao
      Given I am on the "http://localhost/chontu/client/#/fst/home" page
      And I click on "btncategory"
      And I click on "linkAo"
      And I wait for 1 seconds

    @xem_san_pham_theo_danh_muc
    Scenario: Xem san pham quan
      Given I am on the "http://localhost/chontu/client/#/fst/home" page
      And I click on "btncategory"
      And I click on "linkQuan"
      And I wait for 1 seconds

