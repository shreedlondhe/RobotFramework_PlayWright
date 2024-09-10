*** Settings ***
Library           String
Library           Collections
Resource          global_variables.robot
Resource          ../Keywords/common.resource
Resource          ../ObjectRepository/or_home.robot
Resource          ../Keywords/tw_profile.resource
Resource          ../ObjectRepository/tw_profile.robot
Resource          ../Keywords/motor_results_page.resource
Resource          ../ObjectRepository/resultpage.robot
Resource          ../ObjectRepository/Kycpage.robot
Resource          ../Keywords/KycPage.resource
Resource          ../ObjectRepository/checkoutpage.robot
Resource          ../Keywords/CheckoutPage.resource
Resource          ../Keywords/life_profile.resource
Resource          ../Keywords/fw_profile.resource
Resource          ../Keywords/health_profile.resource
Resource          ../ObjectRepository/health_profile.robot
Resource          ../ObjectRepository/life_profile.robot
Resource          ../ObjectRepository/fw_profile.robot
Resource          ../Keywords/health_results_page.resource
Resource          ../Keywords/health_checkout_page.resource
Resource          ../ObjectRepository/health_checkoutpage.robot
Resource          ../Keywords/life_checkoutpage.resource
Resource          ../Keywords/life_results_page.resource
Resource          ../ObjectRepository/life_checkoutpage.robot
Resource          ../ObjectRepository/cv_profile.robot
Resource          ../Keywords/cv_profile_page.resource
Library           Browser
Library           AllureLibrary
Library           RetryFailed
Library           ../Library/CustomLibrary.py
Library           FakerLibrary