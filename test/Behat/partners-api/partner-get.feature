Feature: Partner::get
    In order to retrieve partner basic information
    As a API user
    I need to be able to get specific partner info.

Scenario: Basic partner
    Given I want to do something
    When I fetch "GET /es/redirections/Documentation.json"
    Then I should get:
       """
       id_partner
       uri_name
       name
       type
       partner_type
       download_domain
       active
       """

