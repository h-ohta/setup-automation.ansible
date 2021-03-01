# setup_automation.ansible

## 対象OS（確認済み）
- Ubuntu20.04

## 引数設定（./ansible/vars.yaml）
- ARCH: CPUアーキテクチャ
- NVIDIA_VERSION: nvidiaドライバのバージョン

## 導入されるソフトウェア
- docker
- endpoint-verification
- google-chrome
- nvidia-driver-[NVIDIA_VERSION]
- slack (amd64, 4.13.0)
- vscode
- gitk
- solaar
- cpplint

## 導入される設定
- Caps -> Ctrlに変更
- ホームディレクトリを英語に変更
- ミドルクリックで貼り付けを無効化
- 自動起動するアプリケーション
