%dw 2.0
output application/json
---
payload groupBy (
	$.Id 
	) pluck ((value,key,index) -> {
	"Identification" : {
        "Id": value[0].Id,
        "FirstName": value[0].FirstName,
        "LastName": value[0].LastName,
        "DOB": value[0].DOB,
        "Gender": value[0].Gender,
        "Title": value[0].Title
    },
    "Communication": value distinctBy ($.ContactInfoId) map {
    	"Id": $.contactInfoId,
		"Type": $.ContactInfoType,
		"Value": $.Value,
		"Preferred" : $.Preferred
    },
    "Addess": value distinctBy ($.AddressId) map {
    	"Id": $.AddressId,
    	"Type ": $.AddressType,
		"Number": $.Number,
		"Street": $.Street,
		"Unit": $.Unit,
		"City": $.City,
		"State": $.State,
		"Zipcode": $.ZipCode
    }
			
	})