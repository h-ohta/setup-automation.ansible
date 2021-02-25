# setup_automation.ansible

## 対象OS
- Ubuntu20.04
- Ubuntu18.04

## 引数設定（./ansible/vars.yaml）
- ARCH: アーキテクチャ
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
- 自動起動するアプリケーション
