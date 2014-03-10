Feature: Redirection partner GET.

Scenario: Retrieve a specific partner
    When I request "GET /es/redirection/Documentation"
    Then I get a "200" response
    And the properties exist:
    """
    id_partner
    uri_name
    name
    type
    partner_type
    download_domain
    active
    _links
    """
    And the "id" property is an integer
    And the "active" property is a boolean

Scenario: Retrieve not existing partner
    When I request "GET /es/redirection/NaNaNaNaNaNaLideeer"
    Then I get a "400" response
    And the properties exist:
    """
    error
    error_message
    """
    And the "error" property value is "not_found"