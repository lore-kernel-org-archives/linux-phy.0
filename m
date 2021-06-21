Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7865C49EA2
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 09:39:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7C23D611B0
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 09:39:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7C23D611B0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZptROicNkbSRjiE41VnoSovUNdO/H0cmCUNrxQI6YGE=; b=rFWHfB2sI4TFXY
	Dg4UQ2NTi5yzqBoTV6Q6ZkaawnmhnzQ/sYfu8X4vNpEhX0G+OBce3LwPyXZxon7pwlgQfSALXWCkB
	5UhKrFapZpTUhMEM1Sc0HLSN2jeYARAiNTntxiZDEb657F9wm1wZkelseUWaSlbbX0DXh1i7+FThv
	pvdx9+JDZQldeWTY1m/+aHrTObIywibjwrFeLvSL3j/LGSk5E69ptpbQmj5frOmZGxa//EEif4tSs
	ayl+P8vQ8Y/5r6dI33PxejWBJF3isbhN/SE49uYSuk4SLgRFnEdeUiWs1q/Cl8ByYSD3NOgfedVCG
	fc1Bm/TY5modIf8io9Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvGPM-002xKX-1q; Mon, 21 Jun 2021 09:39:56 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvGPI-002xJD-Tk
 for linux-phy@lists.infradead.org; Mon, 21 Jun 2021 09:39:54 +0000
X-IronPort-AV: E=Sophos;i="5.83,289,1616425200"; d="scan'208";a="85045854"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie5.idc.renesas.com with ESMTP; 21 Jun 2021 18:39:49 +0900
Received: from localhost.localdomain (unknown [10.226.92.241])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id AAC77400C4C3;
 Mon, 21 Jun 2021 18:39:46 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Rob Herring <robh+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Chris Paterson <Chris.Paterson2@renesas.com>,
 Biju Das <biju.das@bp.renesas.com>,
 Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org
Subject: [PATCH v2 00/11] Add USB2.0 support.
Date: Mon, 21 Jun 2021 10:39:32 +0100
Message-Id: <20210621093943.12143-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_023953_122332_BF26E0E3 
X-CRM114-Status: GOOD (  10.10  )
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

This patch series aims to add USB PHY Control, USB2.0 Host and USB2.0 device
support for RZ/G2L SoC.

v1->v2
 * Updated usb phy control bindings with clock definitions
 * Updated generic ohci/ehci bindings to support RZ/G2L SoC
 * Incorporated vind's review comment on us phy control driver
 * Add support for USB2.0 device and OTG support.

v1:
 - https://patchwork.kernel.org/project/linux-renesas-soc/list/?series=498915

Biju Das (11):
  dt-bindings: phy: renesas: Document RZ/G2L USB PHY Control bindings
  drivers: clk: renesas: r9a07g044-cpg: Add USB clocks
  phy: renesas: Add RZ/G2L usb phy control driver
  arm64: configs: defconfig: Enable RZ/G2L USB PHY control driver
  dt-bindings: phy: renesas,usb2-phy: Document RZ/G2L phy bindings
  dt-bindings: usb: generic-ohci: Document RZ/G2L SoC bindings
  dt-bindings: usb: generic-ehci: Document RZ/G2L SoC bindings
  arm64: dts: renesas: r9a07g044: Add USB2.0 phy and host support
  dt-bindings: usb: renesas,usbhs: Document RZ/G2L bindings
  phy: renesas: phy-rcar-gen3-usb2: Add OTG support for RZ/G2L
  arm64: dts: renesas: r9a07g044: Add USB2.0 device support

 .../phy/renesas,rzg2l-usbphyctrl.yaml         |  65 ++++++++
 .../bindings/phy/renesas,usb2-phy.yaml        |  23 +--
 .../devicetree/bindings/usb/generic-ehci.yaml |  33 +++-
 .../devicetree/bindings/usb/generic-ohci.yaml |  32 +++-
 .../bindings/usb/renesas,usbhs.yaml           |  44 ++++-
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi    | 119 +++++++++++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/clk/renesas/r9a07g044-cpg.c           |  12 ++
 drivers/phy/renesas/Kconfig                   |   7 +
 drivers/phy/renesas/Makefile                  |   1 +
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  63 +++++--
 drivers/phy/renesas/phy-rzg2l-usbphyctrl.c    | 157 ++++++++++++++++++
 12 files changed, 522 insertions(+), 35 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/renesas,rzg2l-usbphyctrl.yaml
 create mode 100644 drivers/phy/renesas/phy-rzg2l-usbphyctrl.c

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
