Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E130C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 30 Nov 2021 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ql7F0xaR1NJd3naWJyIQC8ooFg2Ssc/4qYse1vrt9G0=; b=t24UlTvXkApgPJ
	byPPmug9MmiojyV+1xwwTEmsomAWqkwttxaBI58Eez+/plJwAlaSKhHW+lFzmQa7Ke1IRJJA1qIkx
	em0KwcoTI7I5ZQsbJF46+Ianb9+meoBovwSXAwSQQYeMnN5IOB+cPqgnlSuE8hiPSKs5yneDxFCtQ
	BT1xL9egYC4yue1l1OnS8fV6NYvQAqi/0M5CnPe8Wurxxg4W/U9ZVN4Y7H9HSB0DiuJ9AO7pbDBlG
	BY4Psu0k7w810qPUPy4e8VllyEDLUiMCemWfCRa1zWE7hvNbOeI/CqkcNofNklPl+LkaqTVIY4yTj
	aGNFB07m2iYFparRRHiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms0Ii-004aV4-CW; Tue, 30 Nov 2021 10:23:52 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms04M-004ViO-Cr
 for linux-phy@lists.infradead.org; Tue, 30 Nov 2021 10:09:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1638266942; x=1669802942;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2FwvvqSnok2ooh7zpbRusi+58zDEFAmIqlAKrOG2dMU=;
 b=MD3UGAdjeQSm/dTjc17nK7iFrRBRLP0X9iOwIrLE/ft/BqKxvwK/okUq
 T06OTIc8CxKWY0FoUlui28/+zp9vhJ6RYIlNSw2TyVdG3nBQi42iK22mr
 SyhUPvm+xSTQy7gEGDWpin0tfDa+T82FAQmgu7tbwI4t2a1KXQ/RyaOtM
 ewibL3n9SqwMbNQs7jDlnKu8W4UC7hn0vlqYtmC3IzqDWgRQE2HJVHWkD
 gdxhFGAe5Vpe7f2Axyr+DCxK2UriD7Cuwnmu0DB0dMx1NAvAi2mb2up4D
 JiDkisFuhtD3GoWFsZG3/LWTNToShvP9lUWuDnwn5lamrfbhNmN6yDh7q A==;
IronPort-SDR: ANvmwIAupJDD9KB0LZfAifUmNYf8kTngsNeZLYi36quUPF4xN39ZIBXIuqO7FjbcahjJIe1Jf3
 CCqOwRkjssHFYhAl5moZc5HBAiaudDcBt2lDTsY2IwqZk6I8Blvp4EvCXa1kA4s53kCJleMh0/
 ad3cZysdsfvm4aM7nh+XR4C9i7xgsxN5TKs5m8eaUjPxT85v6j7z55jp4ni4XYxUhMqkSpOUah
 wvPkqa2OdRNmn9CWMOGEJSxcJUgAHxNYwtOa+X0PMAZZwpR7I1ldiSLcuny1W8rkFy4XZXzv/w
 RB7u/+SgVVNlYp9LuLI681Um
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="138112841"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 30 Nov 2021 03:08:59 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Tue, 30 Nov 2021 03:08:59 -0700
Received: from soft-dev3-1.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2176.14 via Frontend Transport; Tue, 30 Nov 2021 03:08:58 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <linux@armlinux.org.uk>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>
CC: Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH] phy: lan966x: Extend lan966x to support multiple phy
 interfaces.
Date: Tue, 30 Nov 2021 11:10:15 +0100
Message-ID: <20211130101015.164916-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_020902_551333_68A3595F 
X-CRM114-Status: UNSURE (   9.09  )
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

Currently the driver is supporting only the interfaces QSGMII, SGMII,
RGMII and GMII. This patch extend the supported interfaces with
1000BASE-X and 2500BASE-X.

Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
---
 drivers/phy/microchip/lan966x_serdes.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/microchip/lan966x_serdes.c b/drivers/phy/microchip/lan966x_serdes.c
index 262bb616b4bb..c0b80a176387 100644
--- a/drivers/phy/microchip/lan966x_serdes.c
+++ b/drivers/phy/microchip/lan966x_serdes.c
@@ -392,6 +392,10 @@ static int serdes_set_mode(struct phy *phy, enum phy_mode mode, int submode)
 	if (mode != PHY_MODE_ETHERNET)
 		return -EOPNOTSUPP;
 
+	if (submode == PHY_INTERFACE_MODE_1000BASEX ||
+	    submode == PHY_INTERFACE_MODE_2500BASEX)
+		submode = PHY_INTERFACE_MODE_SGMII;
+
 	for (i = 0; i < ARRAY_SIZE(lan966x_serdes_muxes); i++) {
 		if (macro->idx != lan966x_serdes_muxes[i].idx ||
 		    mode != lan966x_serdes_muxes[i].mode ||
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
