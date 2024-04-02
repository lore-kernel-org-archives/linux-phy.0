Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38655CD1284
	for <linux-phy@archiver.kernel.org>; Tue,  2 Apr 2024 06:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9qes/sWEPiwU0ocHags847wbjJNRxsgKS55N1pDJ1/Y=; b=UOwOres6HlLls2
	amJZWw+JEYdi4eFg3+NBTOy2vzVGwMDqSgcLCoSyDC+WloQq/9bOaHUB8cpUkG+cIBLaYRzl7ZqTN
	r3m72vMGiUpttlSxxh9zSpYoCPNrxp1qENklwBM9gUTlzuVEMK03UeUvskC/wu6WzmjFj8kpgVbyh
	cdjrjN6ubpGAO+Ik5Zn9eEeendeRssqAju9Ueozc1YmgQQoqCT84EXM92jz54SjhzQbditRF1CCqw
	5I4PSTpwIHFXps15XXwMtF5wpxAY+HZGcVyi9L+pNuo2Mn203wx739sQNd7huIRmwmmy+c4HCO4Yw
	2ylTEZk4LhEGvMmT9OgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrXE2-00000009qXK-3JD6;
	Tue, 02 Apr 2024 06:02:26 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrXDx-00000009qTG-2sGK;
	Tue, 02 Apr 2024 06:02:23 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C35441A19BB;
	Tue,  2 Apr 2024 08:02:16 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 798EA1A19B8;
	Tue,  2 Apr 2024 08:02:16 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 92ABE180031D;
	Tue,  2 Apr 2024 14:02:14 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	frank.li@nxp.com,
	conor+dt@kernel.org
Cc: hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: [PATCH v2 1/3] dt-bindings: phy: phy-imx8-pcie: Add binding for i.MX8Q HSIO SerDes PHY
Date: Tue,  2 Apr 2024 13:45:02 +0800
Message-Id: <1712036704-21064-2-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1712036704-21064-1-git-send-email-hongxing.zhu@nxp.com>
References: <1712036704-21064-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_230221_912110_EDAF0ADB 
X-CRM114-Status: UNSURE (   9.19  )
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

Add binding for controller ID and HSIO configuration setting of the
i.MX8Q HSIO SerDes PHY.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---
 include/dt-bindings/phy/phy-imx8-pcie.h | 29 +++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h b/include/dt-bindings/phy/phy-imx8-pcie.h
index 8bbe2d6538d8..3292c8be3354 100644
--- a/include/dt-bindings/phy/phy-imx8-pcie.h
+++ b/include/dt-bindings/phy/phy-imx8-pcie.h
@@ -11,4 +11,33 @@
 #define IMX8_PCIE_REFCLK_PAD_INPUT	1
 #define IMX8_PCIE_REFCLK_PAD_OUTPUT	2
 
+/*
+ * i.MX8QM HSIO subsystem has three lane PHYs and three controllers:
+ * PCIEA(2 lanes capapble PCIe controller), PCIEB (only support one
+ * lane) and SATA.
+ *
+ * In the different use cases. PCIEA can be binded to PHY lane0, lane1
+ * or Lane0 and lane1. PCIEB can be binded to lane1 or lane2 PHY. SATA
+ * can only be binded to last lane2 PHY.
+ *
+ * Define i.MX8Q HSIO controller ID here to specify the controller
+ * binded to the PHY.
+ * Meanwhile, i.MX8QXP HSIO subsystem has one lane PHY and PCIEB(only
+ * support one lane) controller.
+ */
+#define IMX8Q_HSIO_PCIEA_ID	0
+#define IMX8Q_HSIO_PCIEB_ID	1
+#define IMX8Q_HSIO_SATA_ID	2
+
+/*
+ * On i.MX8QM, PCIEA is mandatory required if the HSIO is enabled.
+ * Define configurations beside PCIEA is enabled.
+ *
+ * On i.MX8QXP, HSIO module only has PCIEB and one lane PHY.
+ * The "IMX8Q_HSIO_CFG_PCIEB" can be used on i.MX8QXP platforms.
+ */
+#define IMX8Q_HSIO_CFG_SATA		1
+#define IMX8Q_HSIO_CFG_PCIEB		2
+#define IMX8Q_HSIO_CFG_PCIEBSATA	3
+
 #endif /* _DT_BINDINGS_IMX8_PCIE_H */
-- 
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
