Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1195E98DF0
	for <linux-phy@archiver.kernel.org>; Mon, 23 Feb 2026 06:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cMeQMjwTKTVIoLrmTDiCWIsFGxkW1MjtzLszPJ/nbww=; b=lOythjI3DjpuZu
	wnqoiySrKQr7UnWNj4JJZquH/VS411c8jdCZCEsPKqHIFaVqxiYGBQyNU3guE213DhZ6Vbq7FxOqo
	lMnWC55YwLxcENkPfbHOqwwQDGu98/yPIDst4kAUCV1dQYksR8iZhu7PrH+HKkT/Nr7uUJDUOw1d/
	h7OZWrg1AlGDTY/n1Yn456A4gOtyTXkCWMcT1Qxn3SicSGbgpPgUdoaDpLM90aMaS5u/B7XOAg3cU
	WmgMfCC1dHjeADJINe7lnXRPxarkMzflN9y+47k+tTlKoQva3i3eybmEZHI+wnb8W5z0IqXxl5oSK
	2cEJScyH2xCpd13WhJbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuPtE-0000000HLGx-11n7;
	Mon, 23 Feb 2026 06:57:56 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuPtB-0000000HLGV-3kM8
	for linux-phy@lists.infradead.org;
	Mon, 23 Feb 2026 06:57:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D2C5E41B65;
	Mon, 23 Feb 2026 06:57:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42124C116C6;
	Mon, 23 Feb 2026 06:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771829872;
	bh=Unxx0K1I6zj5nqc0hsqY0AsXBmvBa4EOdXFr7ipsW9w=;
	h=From:To:Cc:Subject:Date:From;
	b=gfHxXiZWN8uG5Wm43LNphCyBq70NmGhsyAgptZniR8CZlTm5Tpq6LC0hONB7Jrj28
	 VznoohTxXvmLtaCfHI6t45EKBPb063zNZhUfHGsLXfhVUYwXAC5mQIuui290qpR5Yj
	 UtDMFnmL/7plNi2NXU8jwDp2XenEwGLvC8kecc/WMVAs2ELdmNWRgDPmeLJ4mIhSCz
	 26pHHtO0qppqKFA4S1gtEwcnz91VOd0Rc1Gyx9x1wG2dbtNAHeUHWt/C4cpJyYT+iY
	 q9njb5mQtjHtKSXoeU2PyWBVpgAtmyvBv7a6ZBVri2AENumPIJClKk99QGoPCAodmH
	 3yGJaesT+B38g==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Vladimir Oltean <olteanv@gmail.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: [PATCH] phy: Sort the subsystem Makefile
Date: Mon, 23 Feb 2026 12:27:43 +0530
Message-ID: <20260223065743.395539-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260222_225753_954596_849B11E6 
X-CRM114-Status: UNSURE (   6.35  )
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

Makefile is supposed to be sorted alphabetically, sadly it has bitrotted
so fix that

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/Makefile | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
index 2773d596e543..90cad2b72cfa 100644
--- a/drivers/phy/Makefile
+++ b/drivers/phy/Makefile
@@ -7,15 +7,16 @@ obj-$(CONFIG_PHY_COMMON_PROPS)		+= phy-common-props.o
 obj-$(CONFIG_PHY_COMMON_PROPS_TEST)	+= phy-common-props-test.o
 obj-$(CONFIG_GENERIC_PHY)		+= phy-core.o
 obj-$(CONFIG_GENERIC_PHY_MIPI_DPHY)	+= phy-core-mipi-dphy.o
+obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
 obj-$(CONFIG_PHY_CAN_TRANSCEIVER)	+= phy-can-transceiver.o
 obj-$(CONFIG_PHY_GOOGLE_USB)		+= phy-google-usb.o
+obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
 obj-$(CONFIG_PHY_LPC18XX_USB_OTG)	+= phy-lpc18xx-usb-otg.o
-obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
+obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
 obj-$(CONFIG_PHY_PISTACHIO_USB)		+= phy-pistachio-usb.o
 obj-$(CONFIG_PHY_SNPS_EUSB2)		+= phy-snps-eusb2.o
-obj-$(CONFIG_USB_LGM_PHY)		+= phy-lgm-usb.o
-obj-$(CONFIG_PHY_AIROHA_PCIE)		+= phy-airoha-pcie.o
-obj-$(CONFIG_PHY_NXP_PTN3222)		+= phy-nxp-ptn3222.o
+obj-$(CONFIG_PHY_XGENE)			+= phy-xgene.o
+
 obj-$(CONFIG_GENERIC_PHY)		+= allwinner/	\
 					   amlogic/	\
 					   apple/	\
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
