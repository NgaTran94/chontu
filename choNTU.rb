
## dang ky
$_RP_OBJECT['register'] = {xpath_selector: '//*[@class="button button-icon button-clear"]'}
$_RP_OBJECT['email'] = {xpath_selector: '//*[@id="username"]'}
$_RP_OBJECT['lastname'] = {xpath_selector: '//*[@id="last_name"]'}
$_RP_OBJECT['firstname'] = {xpath_selector: '//*[@id="first_name"]'}
$_RP_OBJECT['phone'] = {xpath_selector: '//*[@id="phone"]'}
$_RP_OBJECT['btnregister'] = {xpath_selector: '//*[@id="btnregister"]'}
$_RP_OBJECT['error'] = {xpath_selector: '//*[@class="popup-body"]'}
$_RP_OBJECT['ok'] = {xpath_selector: '//*[@class="popup-buttons"]'}

## sua thong tin
$_RP_OBJECT['information'] = {xpath_selector: '//*[@id="loginlink"]'}
$_RP_OBJECT['username'] = {xpath_selector: '//*[@id="username"]'}
$_RP_OBJECT['password'] = {xpath_selector: '//*[@id="password"]'}
$_RP_OBJECT['btnlogin'] = {xpath_selector: '//*[@id="btnlogin"]'}
$_RP_OBJECT['btnlogout'] = {xpath_selector: '//*[@id="logoutlink"]'}
$_RP_OBJECT['update'] = {xpath_selector: '//*[@id="btnupdate"]'}
$_RP_OBJECT['btnok'] = {xpath_selector: '//*[@class="button ng-binding button-positive"]'}
$_RP_OBJECT['out'] = {xpath_selector: '//*[@class="button back-button buttons button-clear header-item"]'}

##xem danh muc
$_RP_OBJECT['btncategory'] = {xpath_selector: '//*[@id="categorylink"]'}
$_RP_OBJECT['linkAo'] = {xpath_selector: '//*[@class="1"]'}
$_RP_OBJECT['linkQuan'] = {xpath_selector: '//*[@class="2"]'}
$_RP_OBJECT['linkGiay'] = {xpath_selector: '//*[@class="3"]'}
$_RP_OBJECT['linkSach'] = {xpath_selector: '//*[@class="4"]'}

## dang ban
$_RP_OBJECT['btnsell'] = {xpath_selector: '//*[@id="selllink"]'}
$_RP_OBJECT['cmbcategory'] = {xpath_selector: '//*[@id="category"]'}
$_RP_OBJECT['loai_ao'] = {xpath_selector: '//*[@id="2"]'}
$_RP_OBJECT['size'] = {xpath_selector: '//*[@id="size"]'}
$_RP_OBJECT['loai_size'] = {xpath_selector: '//*[@id="5"]'}
$_RP_OBJECT['sell'] = {xpath_selector: '//*[@id="btnsell"]'}
$_RP_OBJECT['cmbcolor'] = {xpath_selector: '//*[@id="color"]'}
$_RP_OBJECT['loai_color'] = {xpath_selector: '//*[@id="1"]'}
$_RP_OBJECT['product_name'] = {xpath_selector: '//*[@id="productname"]'}
$_RP_OBJECT['quality'] = {xpath_selector: '//*[@id="quality"]'}
$_RP_OBJECT['loai_quality'] = {xpath_selector: '//*[@id="20"]'}
$_RP_OBJECT['cost'] = {xpath_selector: '//*[@id="cost"]'}
$_RP_OBJECT['description'] = {xpath_selector: '//*[@id="description"]'}
$_RP_OBJECT['image'] = {xpath_selector: '//*[@id="add-new-logo"]'}

Given(/^I log in as "([^"]*)","([^"]*)","([^"]*)","([^"]*)","([^"]*)"$/) do |email,firstname,lastname,phone,server|
 steps %Q{
    Given I am on the "http://#{server}/chontu" page
    And I click on "register"
  	And I click on "email"
    And I set text on "email" with "#{email}"
    And I click on "firstname"
	  And I set text on "firstname" with "#{firstname}"
    And I click on "lastname"
	  And I set text on "lastname" with "#{lastname}"
	  And I click on "phone"
	  And I set text on "phone" with "#{phone}"
    And I click on "btnregister"
  }
end





