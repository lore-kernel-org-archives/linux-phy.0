Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7844ACD1288
	for <linux-phy@archiver.kernel.org>; Fri, 29 Mar 2024 07:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oQZ8r0rNmLgJvJ307kP06Thue490pkMZBxqmhN6guGU=; b=3jv5t1skTSTVwU
	JKHy517czggL4HKqoSdRtYuxXVxm+dEA0d+VxVH9uCpmbzpOqItgbm1qi769C6FXOYueGe+vfK+id
	XO0iCCv7dzsyIioVx1mNY5q1afKkb4HQpHxwovk0I+jNMVDBRB06nZCeB/8fROXu/YjAV8GrAT5qA
	ira/k3MsJaFsVGxgYuirym+RWZD70kNUqLlXvzJu/Q6bbx/YJwK/vmg1HO7a0E8KyWOM3gfZzHsge
	jF9gYKuMQRgSMZ8WISJ7uNCNsRLoxUWMHTSW8REkZxHB+MPLe/eEn9g3/mScql0xBbGMe4itm3r3Z
	1mw5/Jd/lxhIfB/Gd5gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq6yv-0000000HDjO-00iH;
	Fri, 29 Mar 2024 07:48:57 +0000
Received: from inva021.nxp.com ([92.121.34.21])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq6yb-0000000HDab-3jRi;
	Fri, 29 Mar 2024 07:48:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 675AF2008BA;
	Fri, 29 Mar 2024 08:48:34 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1C3E52008D9;
	Fri, 29 Mar 2024 08:48:34 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 325D0183ACAC;
	Fri, 29 Mar 2024 15:48:32 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	frank.li@nxp.com
Cc: hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com
Subject: [RFC 2/3] dt-bindings: phy: phy-imx8-pcie: Add binding for i.MX8Q HSIO SerDes PHY
Date: Fri, 29 Mar 2024 15:31:32 +0800
Message-Id: <1711697493-16151-3-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1711697493-16151-1-git-send-email-hongxing.zhu@nxp.com>
References: <1711697493-16151-1-git-send-email-hongxing.zhu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_004838_085714_CAA52D82 
X-CRM114-Status: UNSURE (   9.68  )
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
---
 include/dt-bindings/phy/phy-imx8-pcie.h | 26 +++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h b/include/dt-bindings/phy/phy-imx8-pcie.h
index 8bbe2d6538d8..5cd5580879fa 100644
--- a/include/dt-bindings/phy/phy-imx8-pcie.h
+++ b/include/dt-bindings/phy/phy-imx8-pcie.h
@@ -11,4 +11,30 @@
 #define IMX8_PCIE_REFCLK_PAD_INPUT	1
 #define IMX8_PCIE_REFCLK_PAD_OUTPUT	2
 
+/*
+ * i.MX8QM HSIO subsystem has three lane PHYs and three controllers:
+ * PCIEA(2 lanes capapble PCIe controller), PCIEB (only support one
+ * lane) and SATA.
+ * In the different use cases. PCIEA can be binded to PHY lane0, lane1
+ * or Lane0 and lane1. PCIEB can be binded to lane1 or lane2 PHY. SATA
+ * can only be binded to last lane2 PHY.
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
