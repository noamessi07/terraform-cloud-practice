ressource "aws_instance" "myserver" {
    count                  = "2"
    ami                    = "ami-0ed9277fb7eb570c9"
    instance_type          = "t2.micro"
    vpc_security_group_ids = [aws_security_group.mysg-sg.id]

    tags = {
        name = "testserver"
    }
}