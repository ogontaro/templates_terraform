# {{cookiecutter.project_name}} terraform

## 初期設定

```bash
cp .env.tempalte
cp .env
```

## 使い方

```bash
makefile init
makefile plan
```

## 変数に関して

### 環境変数

AWS_PROFILEや、GITHUB_TOKENといったproviderの実行に必要な変数や、セキュアな値は環境変数で定義してください
定義場所は下記のとおりです

- ローカル環境
  - .env
- 本番環境
  - Terraform CloudのWorkspace variables

### tfvars

実行環境ごとに定義したいterraform内で参照する変数はtfvarsで定義してください

- ローカル環境
  - .auto.tfvars
- 本番環境
  - Terraform CloudのWorkspace variables

### 設定値

sandbox,production等の環境ごとに定義される値は `./module/enviroments` 以下に定義してください
