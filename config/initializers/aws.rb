# Aws.config.update({
#   region: 'us-east-1',
#   credentials: Aws::Credentials.new(ENV['ASIAXF6QHR5PCWTXS4TK'], ENV['91AmvM7WRNA/2D62e6o+Oj4F8i2yJATHaIxEZLSG']),
# })

# S3_BUCKET = Aws::S3::Resource.new.bucket(ENV['stage-greattimes-app'])
require 'aws-sdk'
s3 = Aws::S3::Resource.new

s3_client = Aws::S3::Client.new(
  access_key_id: 'ASIAXF6QHR5PCWTXS4TK',
  secret_access_key: '91AmvM7WRNA/2D62e6o+Oj4F8i2yJATHaIxEZLSG'
)

signer = Aws::Sigv4::Signer.new(
  service: 's3',
  region: 'us-east-1',
  # static credentials
  access_key_id: 'ASIAXF6QHR5PCWTXS4TK',
  secret_access_key: '91AmvM7WRNA/2D62e6o+Oj4F8i2yJATHaIxEZLSG'
)

Aws.config.update({
    region: 'us-east-1',
    credentials: Aws::Credentials.new('ASIAXF6QHR5PCWTXS4TK', '91AmvM7WRNA/2D62e6o+Oj4F8i2yJATHaIxEZLSG')
  })

#  s3_bucket = s3.bucket('stage-greattimes-app')

 aws_credentials = Aws::Credentials.new(
  ENV['AWS_ACCESS_KEY_ID'],
  ENV['AWS_SECRET_ACCESS_KEY']
)

s3_bucket = Aws::S3::Resource.new(
  region: 'us-east-1',
  credentials: aws_credentials
).bucket('stage-greattimes-app')