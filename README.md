# setup_automation.ansible

## 引数設定（vars.yaml）
- LSB_RELEASE: Ubuntuのバージョン固有名詞
- ARCH: アーキテクチャ
- NVIDIA_VERSION: nvidiaドライバのバージョン

## 導入されるソフトウェア
- docker
- endpoint-verification
- google-chrome
- nvidia-driver-[NVIDIA_VERSION]
- slack (amd64, 4.11.1)
- vscode

## 導入される設定
- Caps -> Ctrlに変更
- ホームディレクトリを英語に変更