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
        "type": "CELL",
        value: "12345667",
        preferred: true
      }
    ],
    Addess: [
      {
        "type ": "HOME",
        number: "1212",
        street: "Belgrano",
        Unit: "PB C",
        City: "CABA",
        State: "Buenos Aires",
        zipcode: "1212"
      }
    ]
  }
])