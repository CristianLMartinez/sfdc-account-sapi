%dw 2.0
output application/java
---
[{
	Name: payload.name,
	Phone: payload.phone,
	Type: payload.'type',
	Fax: payload.fax,
	BillingCity: payload.billingAddress.city,
	BillingStreet: payload.billingAddress.street,
	BillingState: payload.billingAddress.state,
	BillingPostalCode: payload.billingAddress.postalCode,
	BillingCountry: payload.billingAddress.country,
	ShippingStreet: payload.shippingAddress.street,
	ShippingCity: payload.shippingAddress.city,
	ShippingState: payload.shippingAddress.state,
	ShippingPostalCode: payload.shippingAddress.postalCode,
	ShippingCountry: payload.shippingAddress.country
}]
