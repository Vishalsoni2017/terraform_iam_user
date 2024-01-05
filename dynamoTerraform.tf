resource "aws_dynamodb_table" "cars" {
    name = "cars"
    hash_key = "VIN"
    billing_mode = "PAY_PER_REQUEST"
    attribute {
        name = "VIN"
        type = "S"
    }   
}

resource "aws_dynamodb_table_item" "car_item" {
    table_name = aws_dynamodb_table.cars.name
    hash_key = aws_dynamodb_table.cars.hash_key
    item = <<EOF
    {
        "Company":{"S":"Maruti"},
        "Price":{"N":"850000"},
        "VIN":{"S":"asdfasf3232"}
    }
    EOF
} 
