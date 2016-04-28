$_CFWEB = Hash.new
###################################################################
#                     BROWSER CONFIGURATION                       #
###################################################################
#---------------------------
# :firefox=> "FireFox"
# :internet_explorer => "Internet Explorer"
# :chrome => "Chrome"
#---------------------------
$_CFWEB['Print Log'] = true
$_CFWEB['Default Browser'] = :chrome
$_CFWEB['Wait Time'] = 30
$_CFWEB['Maximize Browser'] = true
STDOUT.sync = true
###################################################################
#                    EDITABLE CONFIGURATION                       #
###################################################################
#$_CFWEB['Download Dir'] = "C:/Users/USER/Downloads/"
#$_CFWEB['Expected Data Dir'] = "#{$test_data_dir}/ExpectedDataFile/"
#$test_data_dir = $base_dir + '/features/MYM/Data/'
#$sql_dir = $base_dir + '/features/MYM/Data/MYMSqlScript/'
#$testdata = YAML.load_file("#{$test_data_dir}/mym_testdata.yml")
# $_CFWEB['Page Address'] = 'http://192.168.2.198/'
#$_CFWEB['Page Address'] = 'http://mymethods.dev-infodation.com/?lang=en'
$_CFWEB['Page Address'] = 'http://localhost/chontu/'

# $selenium_grid_url='http://192.168.2.240:5555/wd/hub'
###################################################################
#                     DATABASE CONFIGURATION                      #
###################################################################
$data_source_username = 'root'
$data_source_password = ''
$data_source_url = 'localhost'
###################################################################
#                     WEBSERVICE CONFIGURATION                    #
###################################################################
$WS_URL = 'http://192.168.2.198//reswebservice'
