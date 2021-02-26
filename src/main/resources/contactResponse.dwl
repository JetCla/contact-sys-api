%dw 2.0
output application/json
---
payload groupBy (
	$.Id  ++ '-' ++
	$.FirstName  ++ '-' ++
	$.LastName  ++ '-' ++
	$.DOB  ++ '-' ++
	$.Gender  ++ '-' ++
	$.Title
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
		"type": $.ContactInfoType,
		"value": $.Value,
		"preferred" : $.Preferred
    },
    "Addess": value distinctBy ($.AddressId) map {
    	"type ": $.AddressType,
		"number": $.Number,
		"street": $.Street,
		"Unit": $.Unit,
		"City": $.City,
		"State": $.State,
		"zipcode": $.ZipCode
    }
			
	})