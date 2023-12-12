Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 653A6C4167D
	for <linux-phy@archiver.kernel.org>; Tue, 12 Dec 2023 03:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D8jxn1wEAXU2jHYam7vTlJQqw2Y3PjNgqFXokPa0ROc=; b=d5vMRBqu9ueGsw
	umhMvAuyWyqy2+BfZO9Z8gM8Fa9t7K5RLiejVHkUOolE8aVGjVvM6A0UlA3TpOa6qEt/EVzo0mVos
	yjMO9KUar0pMYlFs3MaUf34C+VmGgcs2YAKyq3EzADB9u6aYzUuFSJJ9rYkXn8kOj6q6hrS7VuWm0
	j7DuFhPtMLam+x7Xsw6Mbk0vk+ENhAXViuzcffMfVV4V+rohXxzgIH2TLeAIBQeNvn0gJRo0QxLxY
	ejU9e1l3H9yCu8P3RSDWTAc7tp3BxsrKOMzqvFneAyFtmkS5qqKurhaOy15DsN6627cDSJ/fKTSbo
	br/O0yZX4DHSlItik54A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCtil-00Aeje-3D;
	Tue, 12 Dec 2023 03:46:11 +0000
Received: from pidgin.makrotopia.org ([185.142.180.65])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCtii-00Aehb-16;
	Tue, 12 Dec 2023 03:46:09 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1rCtiL-0002os-2z;
	Tue, 12 Dec 2023 03:45:47 +0000
Date: Tue, 12 Dec 2023 03:45:42 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>,
	Sean Wang <sean.wang@mediatek.com>,
	Mark Lee <Mark-MC.Lee@mediatek.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Alexander Couzens <lynxis@fe80.eu>,
	Daniel Golle <daniel@makrotopia.org>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: [RFC PATCH net-next v3 0/8] Add support for 10G Ethernet SerDes on
 MT7988
Message-ID: <cover.1702352117.git.daniel@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_194608_381691_804F2576 
X-CRM114-Status: GOOD (  14.10  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This series aims to add support for GMAC2 and GMAC3 of the MediaTek MT7988 SoC.
While the vendor SDK stuffs all this into their Ethernet driver, I've tried to
seperate things into a PHY driver, a PCS driver as well as changes to the
existing Ethernet and LynxI PCS driver.

 +--------------+   +----------------+   +------------------+
 |              +---|  USXGMII PCS   |---+                  |
 | Ethernet MAC |   +----------------+   | PEXTP SerDes PHY |
 |              +---|   SGMII PCS    |---+                  |
 +--------------+   +----------------+   +------------------+

Alltogether this allows using GMAC2 and GMAC3 with all possible interface modes,
including in-band-status if needed.

Note that this series depends on series "dt-bindings: clock: mediatek:
add MT7988 clock IDs"[1] as well as "dt-bindings: watchdog:
mediatek,mtk-wdt: add MT7988 watchdog and toprgu"[2] being merged
before.

[1]: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=809031
[2]: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=802588

Changes since RFC v2:
 - use clk_bulk_* when ever feasible
 - rework Ethernet <-> PCS driver link, use device_link
 
Changes since RFC v1:
 - drop patch inhibiting SGMII AN in 2500Base-X mode
 - make pcs-mtk-lynxi a proper platform driver
 - ... hence allowing to remove all the wrappers from the usxgmii driver
 - attach PEXTP to MAC instead of to USXGMII PCS

Daniel Golle (8):
  dt-bindings: phy: mediatek,xfi-pextp: add new bindings
  phy: add driver for MediaTek pextp 10GE SerDes PHY
  net: pcs: pcs-mtk-lynxi: add platform driver for MT7988
  dt-bindings: net: pcs: add bindings for MediaTek USXGMII PCS
  net: pcs: add driver for MediaTek USXGMII PCS
  dt-bindings: net: mediatek: remove wrongly added clocks and SerDes
  dt-bindings: net: mediatek,net: fix and complete mt7988-eth binding
  net: ethernet: mtk_eth_soc: add paths and SerDes modes for MT7988

 .../devicetree/bindings/net/mediatek,net.yaml | 180 +++++--
 .../bindings/net/pcs/mediatek,usxgmii.yaml    |  60 +++
 .../bindings/phy/mediatek,xfi-pextp.yaml      |  80 +++
 MAINTAINERS                                   |   3 +
 drivers/net/ethernet/mediatek/mtk_eth_path.c  | 122 ++++-
 drivers/net/ethernet/mediatek/mtk_eth_soc.c   | 291 +++++++++--
 drivers/net/ethernet/mediatek/mtk_eth_soc.h   | 107 +++-
 drivers/net/pcs/Kconfig                       |  11 +
 drivers/net/pcs/Makefile                      |   1 +
 drivers/net/pcs/pcs-mtk-lynxi.c               | 226 ++++++++-
 drivers/net/pcs/pcs-mtk-usxgmii.c             | 456 ++++++++++++++++++
 drivers/phy/mediatek/Kconfig                  |  11 +
 drivers/phy/mediatek/Makefile                 |   1 +
 drivers/phy/mediatek/phy-mtk-pextp.c          | 361 ++++++++++++++
 include/linux/pcs/pcs-mtk-lynxi.h             |  11 +
 include/linux/pcs/pcs-mtk-usxgmii.h           |  27 ++
 16 files changed, 1859 insertions(+), 89 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,xfi-pextp.yaml
 create mode 100644 drivers/net/pcs/pcs-mtk-usxgmii.c
 create mode 100644 drivers/phy/mediatek/phy-mtk-pextp.c
 create mode 100644 include/linux/pcs/pcs-mtk-usxgmii.h

-- 
2.43.0

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
