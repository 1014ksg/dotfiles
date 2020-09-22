#! /bin/sh

# slack
## wget コマンドと、ブラウザ上のdownloadpageから.deb package をdown loadする行為は同じこと！
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb
sudo apt install ./slack-desktop-*.deb
