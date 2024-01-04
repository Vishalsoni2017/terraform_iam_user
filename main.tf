resource "aws_iam_user" "admin-user" {
    name = "vsoni"
    tags = {
        Description = "Technical Team Leader"
    }
}
#Ist method
resource "aws_iam_policy" "adminUser" {
    name="AdminUsers"
    policy= jsonencode({
       
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]

    })

}

resource "aws_iam_user_policy_attachment" "lucky-admin-access" {
    user = aws_iam_user.admin-user.name
    policy_arn = aws_iam_policy.adminUser.arn
}

##########

#2nd method
# policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
#3rd method policy = file(policy.json)