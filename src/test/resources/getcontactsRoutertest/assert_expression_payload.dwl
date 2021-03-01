%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo([
  {
    Identification: {
      Id: 1,
      FirstName: "claudio",
      LastName: "desalvo",
      DOB: "1976-10-05T00:00:00",
      Gender: "M",
      Title: "Manager"
    },
    Communication: [
      {
        Id: 1,
        Type: "CELL",
        Value: "12345667",
        Preferred: true
      }
    ],
    Addess: [
      {
        Id: 1,
        "Type ": "HOME",
        Number: "1212",
        Street: "Belgrano",
        Unit: "PB C",
        City: "CABA",
        State: "Buenos Aires",
        Zipcode: "1212"
      }
    ]
  }
])