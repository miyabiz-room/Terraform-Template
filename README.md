# TerraformでVPCを構築しよう
みやびの部屋の提供するAWS用の[Terraformテンプレート](https://github.com/miyabiz-room/Terraform-Template/tree/main)です。

1.  git cloneコマンド

    ```
    git clone -b vpc-01 https://github.com/miyabiz-room/Terraform-Template.git
    ```

2.  環境

    akane というシステムの dev 環境を想定しています。
    同じ構成で違う環境を作成する場合は、{環境名}のディレクトリを別途作成します。

    ```
    akane (システム)
      ├── common (共通テンプレート)
      │   ├── network.tf (スタック)
      │   ├── outputs.tf (リソースのアプトプット生成)
      │   └── variables.tf (パラメータ型定義)
      └── dev (dev 環境)
          └── main (dev 環境のテンプレート)
              ├── locals.tf (dev 環境の共通パラメータ)
              ├── main.tf (dev 環境のパラメータ)
              ├── outputs.tf (リソースのアプトプット出力)
              └── providers.tf (AWS プロバイダー)
    ```

## AWS リソース構築内容
  - VPC (10.0.0.0/16)

## AWS システム構成図
![vpc.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/682035/150a0925-0a29-84ce-00ae-83af0c5fed2c.png)

## 実行環境の準備
[AWS CloudFormationを動かすためのAWS CLIの設定](https://qiita.com/miyabiz/items/fed11796f0ea2b7608f4)を参考にしてください。

## AWS リソース構築手順
1.  下記を実行してスタックを作成

    ```
    cd akane/dev/main
    terraform init
    terraform apply
    ```

2.  下記を実行してスタックを削除

    ```
    cd akane/dev/main
    terraform destroy
    ```

## 関連情報
  - [[Qiita] TerraformでVPCを構築しよう](https://qiita.com/miyabiz/items/3092a56ae13d7e07b643)
