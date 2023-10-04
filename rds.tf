# create database subnet group
# terraform aws db subnet group
resource "aws_db_subnet_group" "database_subnet_group" {
  name         = "warsame-db-subnet-groups"
  subnet_ids   = [aws_subnet.private_data_subnet_az1.id, aws_subnet.private_data_subnet_az2.id]
  description  = "subnets for database instance"

  tags   = {
    Name = "warsame-db-subnet-groups"
  }
}

# get the latest db snapshot
# terraform aws data db snapshot
data "aws_db_snapshot" "latest_db_snapshot" {
  db_snapshot_identifier = var.Database_snapashot_identifier
  most_recent            = true 
  snapshot_type          = "manual"
}

# create database instance restored from db snapshots
# terraform aws db instance
resource "aws_db_instance" "database_instance" {
  instance_class          = var.Database_instance_class
  skip_final_snapshot     = true
  availability_zone       = "us-east-1b"
  identifier              = var.Database_instance_identifier
  snapshot_identifier     = data.aws_db_snapshot.latest_db_snapshot.id
  db_subnet_group_name    = aws_db_subnet_group.database_subnet_group.name
  multi_az                = var.multi_az_deployment
  vpc_security_group_ids  = [aws_security_group.database_security_group.id]
}