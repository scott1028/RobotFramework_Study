*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
...               也可以樣寫 .../ssdLogin/resource.txt
Resource          ../resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    admin
    Input Password    admin
    Submit Login
    Check URL After Login
    [Teardown]    Close Browser

Invalid Login
    Open Browser To Login Page
    Input Username    admin1
    Input Password    admin
    Submit Login
    Alert Should Be Present    User is not found.
    [Teardown]    Close Browser
