Return-Path: <SRS0=JCKM=MT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82BE0C4338F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 18:56:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2131D60F6E
	for <linux-phy@archiver.kernel.org>; Tue, 27 Jul 2021 18:56:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2131D60F6E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bp.renesas.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J/RLmu0gYeJsuvC4WPHfHiPoFnl0BDEohPqc+U/e6qs=; b=s0Cl2Oi3lqp06a
	By88lkf6eVQFWx6lJVGWd2SgO2ms2JlrpB1QwiixDXBZDlIcpxtHFkJXDfzYFpQ7jYKjkK/KZGYGJ
	MpSVQeQt1TqvrbfOqldywMRuik1O7uw8dI4xuN8X4NmXuLUEKU6vE+Z2/eSm1RhvwJ823qAFiT/Nz
	gqHSHx0AJN3kzMb8r16NdezegUhkJs6dRe/fLUTOSKHipdKjsAYZ0haU5/LF+xyBTCLvQOWp/aBOX
	vJkOa7gziTZr8Vg0NPJ35I0kXfmJNCHuRl+V7QZB6irWf/v4KFVDPobF7L3CF992ZRJ9JzbASYvc+
	rq9F+C4z1Rne3LUHq1GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8SFU-00G3SG-EI; Tue, 27 Jul 2021 18:56:16 +0000
Received: from relmlor2.renesas.com ([210.160.252.172]
 helo=relmlie6.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8SEq-00G3Be-19
 for linux-phy@lists.infradead.org; Tue, 27 Jul 2021 18:55:37 +0000
X-IronPort-AV: E=Sophos;i="5.84,274,1620658800"; d="scan'208";a="88899487"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie6.idc.renesas.com with ESMTP; 28 Jul 2021 03:55:32 +0900
Received: from localhost.localdomain (unknown [10.226.92.236])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id DF5A24005161;
 Wed, 28 Jul 2021 03:55:29 +0900 (JST)
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
Subject: [PATCH v5 0/6] Add USB2.0 support
Date: Tue, 27 Jul 2021 19:55:21 +0100
Message-Id: <20210727185527.19907-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210727_115536_224285_57C8E58B 
X-CRM114-Status: UNSURE (   9.30  )
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

This patch series aims to add USB2.0 Host and device support for RZ/G2L SoC.

v4->v5:
 * Removed USBPHY control and binding patches as it is accepted for reset/next
 * Removed USB ehci/ohci binding patches as it is accepted for usb/next.
 * Updated Renesas USB2.0 PHY bindings to just use 'resets' as required.
 * Added interrupts maxitems=1 for SoC other than RZ/G2L for Renesas USBHS bindings
 * Updated the commit description for USB2.0 PHY driver patch.

v3->v4:
 * Added Rob's Acked-by tag for generic-{ohci,ehci} binding patch
 * Added Rob's Rb tag for RZ/G2L USBPHY control binding patch
 * Incorporated Philipp's review comments for USBPHY control driver.
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

Biju Das (6):
  arm64: configs: defconfig: Enable RZ/G2L USBPHY control driver
  dt-bindings: phy: renesas,usb2-phy: Document RZ/G2L phy bindings
  phy: renesas: phy-rcar-gen3-usb2: Add USB2.0 PHY support for RZ/G2L
  arm64: dts: renesas: r9a07g044: Add USB2.0 phy and host support
  dt-bindings: usb: renesas,usbhs: Document RZ/G2L bindings
  arm64: dts: renesas: r9a07g044: Add USB2.0 device support

 .../bindings/phy/renesas,usb2-phy.yaml        |  15 +++
 .../bindings/usb/renesas,usbhs.yaml           |  26 +++-
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi    | 113 ++++++++++++++++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/phy/renesas/phy-rcar-gen3-usb2.c      |  97 +++++++++++----
 5 files changed, 226 insertions(+), 26 deletions(-)

-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
