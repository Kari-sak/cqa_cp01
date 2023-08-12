@tag
	Feature: Everything about your Pets
	Description of the feature

	Background:
	Given path 'pet'

@PostPet
	Scenario: Add a new pet to the store
   	Given url UrlBase
   	And request {"id": 1, "category": {"id": 12, "name": "lia"}, "name": "lia", "photoUrls": ["string"], "tags": [{"id": 12, "name": "lia"}], "status": "pending"}
   	When method POST
   	Then status 200 	
   	
@GetPetId
  	Scenario: Find pets by ID
    Given url UrlBase
    And path '/1'
    When method GET
    Then status 200
    
@PutPet
	Scenario: Pet object that needs to be added to the store
	Given url UrlBase
	And request {"id": 3, "category": {"id": 20, "name": "string"}, "name": "nina", "photoUrls": ["string"], "tags": [{"id": 20, "name": "string"}], "status": "sold"}
	When method PUT
	Then status 200

@PostOrder
    Scenario: Place an order for a pet
    Given url UrlBase
    And request {"id": 2, "petId": 18, "quantity": 1, shipDate": "2023-08-12T00:38:26.206+0000", "status": "placed", "complete": true}
    When method POST
    Then status 200
	
@DeleteOrder
    Scenario: Place an order for a pet
    Given url UrlBase
    And path '2'
    When method DELETE
    Then status 200
