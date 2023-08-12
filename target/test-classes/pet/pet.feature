#Karina Megumi Sakamoto - RM95121

@tag
	Feature: Everything about your Pets
	Description of the feature

	Background:
	Given path 'pet'

@tag1
  Scenario: Finds Pets by status
    Given url UrlBase
    And path 'findByStatus'
    And param status = 'available'
    When method GET
    Then status 200
    And match response[0].name contains 'fish'

@PostPet
	Scenario: Add a new pet to the store
   	Given url UrlBase
   	And request {"id": 1, "category": {"id": 1, "name": "lia"}, "name": "lia", "photoUrls": ["string"], "tags": [{"id": 1, "name": "lia"}], "status": "pending"}
   	When method POST
   	Then status 200 	

@GetPetId
  	Scenario: Find pets by ID
    Given url UrlBase
    And path '1'
    When method GET
    Then status 200
    
@PutPet
	Scenario: Pet object that needs to be added to the store
	Given url UrlBase
	And request {"id": 2, "category": {"id": 2, "name": "string"}, "name": "nina", "photoUrls": ["string"], "tags": [{"id": 2, "name": "string"}], "status": "sold"}
	When method PUT
	Then status 200

@PostOrder
    Scenario: Place an order for a pet
    Given url UrlBase
    And request {"id": 2, "petId": 2, "quantity": 1, shipDate": "2023-08-12T00:38:26.206+0000", "status": "placed", "complete": true}
    When method POST
    Then status 200
	
@DeleteOrder
    Scenario: Place an order for a pet
    Given url UrlBase
    And path '2'
    When method DELETE
    Then status 200
