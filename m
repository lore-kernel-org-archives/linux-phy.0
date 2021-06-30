Return-Path: <SRS0=FOTy=LY=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D44C5C11F65
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 07:39:59 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 920C160C3F
	for <linux-phy@archiver.kernel.org>; Wed, 30 Jun 2021 07:39:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 920C160C3F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EPc1/NFKEchKhoFiUCYZnGfURqF2exVI13oGNOtt6vo=; b=TFjRpxeGKoV2yh
	JPFaMLjT+oZ7bgxsJwu/BBCWsfJ5ROd0RGl3kiHP3CbwsA7MGSMyyfWQ1GfQRlYbsFgDi+cZkETZ1
	i/g4jQqL5liChCFh8QdAfQcpDhGqHrDLUiLW7AGoGehyNh9RnDmmjeOK79p90FdxX0vsfIxkRjKEF
	FwBzTRORDpkT28xDNfljOrw0NQ9n6xiS++BzkFAEVffzq/8U+piBEZS8bPwSc21yXnk8OrVWjbsNI
	hLQd5Mq9joW+MP/9ESAdQbfiX0NnCkePc1DDG9QxcqeYQwsSNcKK3Qh21nDnFqD5Q+v9TQHd4KU+K
	0vKCYSSWzLBqvJzMzL+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyUpC-00D99v-Rv; Wed, 30 Jun 2021 07:39:58 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyUnX-00D8K9-Ve
 for linux-phy@lists.infradead.org; Wed, 30 Jun 2021 07:38:17 +0000
X-IronPort-AV: E=Sophos;i="5.83,311,1616425200"; d="scan'208";a="85976892"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie5.idc.renesas.com with ESMTP; 30 Jun 2021 16:38:14 +0900
Received: from localhost.localdomain (unknown [10.226.93.74])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id 457CC4012252;
 Wed, 30 Jun 2021 16:38:11 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org
Subject: [PATCH v3 00/11] Add USB2.0 support
Date: Wed, 30 Jun 2021 08:37:47 +0100
Message-Id: <20210630073747.22677-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_003816_211309_A45CD1AF 
X-CRM114-Status: UNSURE (   9.66  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This patch series aims to add USB PHY Control, USB2.0 Host and USB2.0 device support for RZ/G2L SoC.

https://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git/log/?h=topic/rzg2l-update-clock-defs-v4

v2->v3
 * USBPHY Control IP modelled as reset bindings as per Rob's suggestion
 * Updated the binding patches
 * Incorporated Geert's and Shimoda-San's review comment for phy driver patch.

v1->v2
 * Updated usb phy control bindings with clock definitions
 * Updated generic ohci/ehci bindings to support RZ/G2L SoC
 * Incorporated vind's review comment on us phy control driver
 * Add support for USB2.0 device and OTG support.

Biju Das (11):
  dt-bindings: usb: generic-ohci: Document dr_mode property
  dt-bindings: usb: generic-ehci: Document dr_mode property
  dt-bindings: reset: Document RZ/G2L USBPHY Control bindings
  drivers: clk: renesas: r9a07g044-cpg: Add USB clocks/resets
  reset: renesas: Add RZ/G2L usbphy control driver
  arm64: configs: defconfig: Enable RZ/G2L USBPHY control driver
  dt-bindings: phy: renesas,usb2-phy: Document RZ/G2L phy bindings
  arm64: dts: renesas: r9a07g044: Add USB2.0 phy and host support
  dt-bindings: usb: renesas,usbhs: Document RZ/G2L bindings
  phy: renesas: phy-rcar-gen3-usb2: Add OTG support for RZ/G2L
  arm64: dts: renesas: r9a07g044: Add USB2.0 device support

 .../bindings/phy/renesas,usb2-phy.yaml        |  18 ++
 .../reset/renesas,rzg2l-usbphy-ctrl.yaml      |  66 ++++++
 .../devicetree/bindings/usb/generic-ehci.yaml |   5 +
 .../devicetree/bindings/usb/generic-ohci.yaml |   5 +
 .../bindings/usb/renesas,usbhs.yaml           |  21 +-
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi    | 113 ++++++++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/clk/renesas/r9a07g044-cpg.c           |  12 ++
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  97 ++++++---
 drivers/reset/Kconfig                         |   7 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-rzg2l-usbphy-ctrl.c       | 195 ++++++++++++++++++
 12 files changed, 515 insertions(+), 26 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
 create mode 100644 drivers/reset/reset-rzg2l-usbphy-ctrl.c


base-commit: 06c1e6911a7a76b446e4b00fc8bad5d8465932f8
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
