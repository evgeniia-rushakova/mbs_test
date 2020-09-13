SELECT property.name, property_value.value
FROM property_value
INNER JOIN property ON property.id = property_value.property_id
WHERE product_id = 1