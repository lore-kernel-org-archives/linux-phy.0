Return-Path: <SRS0=/uDz=ML=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CFBC07E9B
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jul 2021 12:30:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1ED9B6113B
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jul 2021 12:30:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1ED9B6113B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U1nNbuWqZ/XTP3ebjxUMai32J+DDPWUhbI8lROZJPnY=; b=riLqRuIeVO/0bi
	vBZgeHvHTYg+3MQUBr6oauSdSrrD9R4xWySy0wIb+fcOYT4S8L6eKOfn0tyMGz/ZyPGLlT6g3sQme
	WV6tvpZTiQR7d87IIDVVA9Kxy0VDBYNuzUUqCLQxVtIxT61WcFjed2OPDVy9d0y2qI99MtqZnSwvw
	w1bpJKBMz0jDAIdRmBfoM6iw5uqjrIiEVUy/QIGZCmjtIuOHVPMHppGxcSxewXYxLT3ISJbctWPsh
	gXFAm5f2/Wb3pDQGhea3OBWzBSSIbpqlBQfJJt80nl7NJdLoi7EN9zRwlMH3tamlVyt0vjKy5Fd4t
	56aTsCCLALaHOu1PI3sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5SPr-009c76-Lb; Mon, 19 Jul 2021 12:30:35 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5SPo-009c6L-Vq
 for linux-phy@lists.infradead.org; Mon, 19 Jul 2021 12:30:34 +0000
X-IronPort-AV: E=Sophos;i="5.84,252,1620658800"; d="scan'208";a="88078285"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie6.idc.renesas.com with ESMTP; 19 Jul 2021 21:25:26 +0900
Received: from localhost.localdomain (unknown [10.226.92.6])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id CDE024221AFD;
 Mon, 19 Jul 2021 21:25:23 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-renesas-soc@vger.kernel.org, linux-phy@lists.infradead.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v4 00/10] Add USB2.0 support
Date: Mon, 19 Jul 2021 13:25:21 +0100
Message-Id: <20210719122521.6855-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210719_053033_173436_154C137D 
X-CRM114-Status: GOOD (  10.00  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This patch series aims to add USB PHY Control, USB2.0 Host and USB2.0 device support for RZ/G2L SoC.

v3->v4:
 * Added Rob's Acked-by tag for generic-{ohci,ehci} binding patch
 * Added Rob's Rb tag for RZ/G2L USBPHY control binding patch
 * Incorporated Phillip's review comments for USBPHY control driver.
 * Dropped second reset from usb2-phy binding patch
 * Added maxitems as per Rob's review comment.

v2->v3
 * USBPHY Control IP modelled as reset bindings as per Rob's suggestion
 * Updated the binding patches
 * Incorporated Geert's and Shimoda-San's review comment for phy driver patch.

v1->v2
 * Updated usb phy control bindings with clock definitions
 * Updated generic ohci/ehci bindings to support RZ/G2L SoC
 * Incorporated vinod's review comment on usb phy control driver
 * Add support for USB2.0 device and OTG support.

Biju Das (10):
  dt-bindings: usb: generic-ohci: Document dr_mode property
  dt-bindings: usb: generic-ehci: Document dr_mode property
  dt-bindings: reset: Document RZ/G2L USBPHY Control bindings
  reset: renesas: Add RZ/G2L usbphy control driver
  arm64: configs: defconfig: Enable RZ/G2L USBPHY control driver
  dt-bindings: phy: renesas,usb2-phy: Document RZ/G2L phy bindings
  phy: renesas: phy-rcar-gen3-usb2: Add OTG support for RZ/G2L
  arm64: dts: renesas: r9a07g044: Add USB2.0 phy and host support
  dt-bindings: usb: renesas,usbhs: Document RZ/G2L bindings
  arm64: dts: renesas: r9a07g044: Add USB2.0 device support

 .../bindings/phy/renesas,usb2-phy.yaml        |  19 ++
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |  65 +++++++
 .../devicetree/bindings/usb/generic-ehci.yaml |   5 +
 .../devicetree/bindings/usb/generic-ohci.yaml |   5 +
 .../bindings/usb/renesas,usbhs.yaml           |  22 ++-
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi    | 113 +++++++++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  97 +++++++---
 drivers/reset/Kconfig                         |   7 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       | 175 ++++++++++++++++++
 11 files changed, 484 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
 create mode 100644 drivers/reset/reset-rzg2l-usbphy-ctrl.c

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
