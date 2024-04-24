Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FC50C10F16
	for <linux-phy@archiver.kernel.org>; Wed, 24 Apr 2024 06:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Izaa0zqMltYPLBEf7DE6ZxLm2C+LHpbD1yZCQFVulW8=; b=TzuFya899BdpoR
	TkpZ+/Ux4Kp8+ZeToKYy1Sh5EgIWLoHUvz8FJY65FN21nXeCv89w0okwIwYD1N6HA2RCLlRNSzHhR
	DNX/epZM5OMQ5JV1i0FlU51f2hOKDi8QtgiEcZJ/v6GaDUTWXjkA5bjrLGUSulr3IjswBXF8O1QGQ
	c9hhdiPvfd9E+Sp9nIzPvrV0sA2wqT7JoSCtgqx+M22pAjVP4ah/xxY3CCBmmoVnCNgmjUBOHBWJE
	pVYBH7nn8MQaSV3ac2NP0EqyRMQ9e72Or4GnIOqxUrdWit38KOaiBsANC4Aud0/2XX9qDEiPoeT7M
	kpGM6YcpCwSrDFd0lz+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWIe-00000002uTl-23oS;
	Wed, 24 Apr 2024 06:40:12 +0000
Received: from inva021.nxp.com ([92.121.34.21])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWIK-00000002uCc-3Hwe;
	Wed, 24 Apr 2024 06:39:55 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 12829202228;
	Wed, 24 Apr 2024 08:39:44 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2C6BF201BBB;
	Wed, 24 Apr 2024 08:39:43 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id BA491181D0FC;
	Wed, 24 Apr 2024 14:39:40 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: conor@kernel.org,
	vkoul@kernel.org,
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
Subject: [PATCH v3 1/3] dt-bindings: phy: phy-imx8-pcie: Add header file for i.MX8Q HSIO SerDes PHY
Date: Wed, 24 Apr 2024 14:21:21 +0800
Message-Id: <1713939683-15328-2-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1713939683-15328-1-git-send-email-hongxing.zhu@nxp.com>
References: <1713939683-15328-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_233953_451445_1665690D 
X-CRM114-Status: GOOD (  10.05  )
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

Add lane index and HSIO configuration definitions of the i.MX8Q HSIO
SerDes PHY into header file.

Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
---
 include/dt-bindings/phy/phy-imx8-pcie.h | 62 +++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h b/include/dt-bindings/phy/phy-imx8-pcie.h
index 8bbe2d6538d8..60447b95a952 100644
--- a/include/dt-bindings/phy/phy-imx8-pcie.h
+++ b/include/dt-bindings/phy/phy-imx8-pcie.h
@@ -11,4 +11,66 @@
 #define IMX8_PCIE_REFCLK_PAD_INPUT	1
 #define IMX8_PCIE_REFCLK_PAD_OUTPUT	2
 
+/*
+ * i.MX8QM HSIO subsystem has three lane PHYs and three controllers:
+ * PCIEA(2 lanes capable PCIe controller), PCIEB (only support one
+ * lane) and SATA.
+ *
+ * Meanwhile, i.MX8QXP HSIO subsystem has one lane PHY and PCIEB(only
+ * support one lane) controller.
+ *
+ * In the different use cases. PCIEA can be bound to PHY lane0, lane1
+ * or Lane0 and lane1. PCIEB can be bound to lane1 or lane2 PHY. SATA
+ * can only be bound to last lane2 PHY.
+ *
+ * +-------------------------------+------------------+
+ * | i.MX8QM                       | i.MX8QXP         |
+ * |-------------------------------|------------------|
+ * |       | PCIEA | PCIEB | SATA  |       | PCIEB    |
+ * |-------------------------------|-------|----------|
+ * | LAN 0 | X     |       |       | LAN 0 | *        |
+ * |-------------------------------|-------|----------|
+ * | LAN 1 | X     | *     |       |       |          |
+ * |-------------------------------|-------|----------|
+ * | LAN 2 |       | *     | *     |       |          |
+ * +-------------------------------+------------------+
+ * NOTE:
+ * *: Choose one only.
+ * X: Choose any of these.
+ *
+ * Define i.MX8Q HSIO PHY lane index here to specify the lane mask.
+ */
+#define IMX8Q_HSIO_LANE0	0x1
+#define IMX8Q_HSIO_LANE1	0x2
+#define IMX8Q_HSIO_LANE2	0x4
+
+/*
+ * Regarding the design of i.MX8QM HSIO subsystem, HSIO module can be
+ * confiured as following three use cases.
+ *
+ * Define different configurations refer to the use cases, since it is
+ * mandatory required in the initialization.
+ *
+ * On i.MX8QXP, HSIO module only has PCIEB and one lane PHY.
+ * Define "IMX8Q_HSIO_CFG_PCIEB" for i.MX8QXP platforms.
+ *
+ * +----------------------------------------------------+----------+
+ * |                               | i.MX8QM            | i.MX8QXP |
+ * |-------------------------------|--------------------|----------|
+ * |                               | LAN0 | LAN1 | LAN2 | LAN0     |
+ * |-------------------------------|------|------|------|----------|
+ * | IMX8Q_HSIO_CFG_PCIEAX2SATA    | PCIEA| PCIEA| SATA |          |
+ * |-------------------------------|------|------|------|----------|
+ * | IMX8Q_HSIO_CFG_PCIEAX2PCIEB   | PCIEA| PCIEA| PCIEB|          |
+ * |-------------------------------|------|------|------|----------|
+ * | IMX8Q_HSIO_CFG_PCIEAPCIEBSATA | PCIEA| PCIEB| SATA |          |
+ * |-------------------------------|------|------|------|----------|
+ * | IMX8Q_HSIO_CFG_PCIEB          | -    | -    | -    | PCIEB    |
+ * +----------------------------------------------------+----------+
+ */
+#define IMX8Q_HSIO_CFG_PCIEAX2SATA	0x1
+#define IMX8Q_HSIO_CFG_PCIEAX2PCIEB	0x2
+#define IMX8Q_HSIO_CFG_PCIEAPCIEBSATA	(IMX8Q_HSIO_CFG_PCIEAX2SATA | IMX8Q_HSIO_CFG_PCIEAX2PCIEB)
+#define IMX8Q_HSIO_CFG_PCIEB		IMX8Q_HSIO_CFG_PCIEAX2PCIEB
+
 #endif /* _DT_BINDINGS_IMX8_PCIE_H */
-- 
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
