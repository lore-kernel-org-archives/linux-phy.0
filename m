Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87C69C27C55
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jun 2024 11:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UUTAaAuiGRctM1lkhEVCrM4rsQ/hYZOpxu8V+yTN8Ok=; b=4Gl56fo35Xksy6
	DeFPQ/0usSmJM+uYaMVNoK++aLdTmsg6VkKTCFsjQ8pKyiWhGbd+jOiUhk9NcpfeXGBkztl96lxSS
	lGXX5zCT8oETPerSqnWv3osEGQDFzx+TOWcypNgFHaNFe/mN/LKhz8WsQLtEFt1yAHi8u0y0N6A/c
	X/iZAdi28oXF3P1VXMZ1BQpItL2TX9Adf7Q/yh12ODhidt4BycyrvsUoYPmKgmW9Vp+xleBUpfOMd
	KBB/GqlxVvNdnJSvjlVZuQVZSzeIodowx9jmPZSPtNYBdLaLOz7T+3FqRvPUpQyulyqhT+Ex9gULz
	9QrYQjraRJ7PK0qYpPdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXv6-0000000DmVI-0Zgl;
	Fri, 07 Jun 2024 11:38:08 +0000
Received: from relmlor1.renesas.com ([210.160.252.171] helo=relmlie5.idc.renesas.com)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFXv3-0000000DmS0-1uCa
	for linux-phy@lists.infradead.org;
	Fri, 07 Jun 2024 11:38:07 +0000
X-IronPort-AV: E=Sophos;i="6.08,221,1712588400"; 
   d="scan'208";a="207084411"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
  by relmlie5.idc.renesas.com with ESMTP; 07 Jun 2024 20:37:52 +0900
Received: from localhost.localdomain (unknown [10.226.92.204])
	by relmlir5.idc.renesas.com (Postfix) with ESMTP id 0BC8D40071E8;
	Fri,  7 Jun 2024 20:37:47 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-renesas-soc@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	devicetree@vger.kernel.org
Subject: [PATCH RFC v2 0/4] Add USB VBUS regulator for RZ/G2L
Date: Fri,  7 Jun 2024 12:37:41 +0100
Message-Id: <20240607113745.73934-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240607_043805_629072_3F295F10 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
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

As per RZ/G2L HW manual, VBUSEN can be controlled by the VBOUT bit of the
VBUS Control Register(VBENCTL) register in the USBPHY Control. But this IP
is in the Reset block.

Reset driver exposes this register as regmap and instantiate the USB VBUS
regulator device. Consumers(phy device) can use regulator driver's regmap
to control VBUS as controlling is done in the atomic context.

Please provide your valuable inputs.

v1->v2:
 * Introduced a regulator driver to control VBUS

Biju Das (4):
  reset: renesas: Instantiate USB VBUS regulator device
  regulator: Add Renesas RZ/G2L USB VBUS regulator driver
  phy: renesas: phy-rcar-gen3-usb2: Control VBUSEN selection
  arm64: dts: renesas: rz-smarc: Replace fixed regulator for USB VBUS

 .../boot/dts/renesas/rz-smarc-common.dtsi     | 15 ++---
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      | 17 ++++-
 drivers/regulator/Kconfig                     |  9 +++
 drivers/regulator/Makefile                    |  1 +
 .../regulator/renesas-usb-vbus-regulator.c    | 65 +++++++++++++++++++
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       | 29 +++++++++
 6 files changed, 126 insertions(+), 10 deletions(-)
 create mode 100644 drivers/regulator/renesas-usb-vbus-regulator.c

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
