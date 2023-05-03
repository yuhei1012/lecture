## S3テンプレート

```
AWSTemplateFormatVersion: '2010-09-09'
Description: 'S3バケットを作成するテンプレート'

Parameters:
  BucketName:
    Type: String
    Default: mybucket
    Description: S3バケットの名前
  BucketPolicy:
    Type: String
    Default: '{"Version": "2012-10-17", "Statement": [{"Effect": "Allow", "Principal": "*", "Action": "s3:GetObject", "Resource": "arn:aws:s3:::' + !Ref BucketName + '/*"}]}'
    Description: S3バケットポリシー

Resources:
  MyBucket:
    Type: 'AWS::S3::Bucket'
    Properties:
      BucketName: !Ref BucketName

  MyBucketPolicy:
    Type: 'AWS::S3::BucketPolicy'
    Properties:
      Bucket: !Ref MyBucket
      PolicyDocument:
        Fn::Sub: ${BucketPolicy}
        
       ```
