Feature: Redirection partner GET.

Scenario: Retrieve a specific partner
    When I request "GET /es/redirections/Documentation"
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
    And the "id_partner" property is an integer
    And the "active" property is a boolean

Scenario: Retrieve not existing partner
    When I request "GET /es/redirections/NaNaNaNaNaNaLideeer"
    Then I get a "404" response
    And the properties exist:
    """
    error
    error_message
    """
    And the "error" property value is "not_found"