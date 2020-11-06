# [AWS]TerraformでVPCを構築しよう
みやびの部屋の提供するAWS用の[Terraform](https://github.com/miyabiz-room/Terraform-Template/tree/main)のテンプレートです。

1.  git cloneコマンド

    ```
    git clone -b vpc-01 https://github.com/miyabiz-room/Terraform-Template.git
    ```

2.  環境

    akane というシステムの dev 環境を想定しています。

    ```
    akane (システム)
      └─ network 
          ├─ network.tf 
          ├─ variables.tf
          └─ dev.tfvars (dev環境のパラメータ)
    ```

## AWS リソース構築内容
  - VPC (10.0.0.0/16)
