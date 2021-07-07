Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB92AC07E9B
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:58:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF16461CAA
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:58:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AF16461CAA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JILYK8Ais63woD7jM9efEB5s5AglfFL6Ewamg1ljdHI=; b=cXxEpDJ2C1pQyP
	Q6qquukpwfRFF22/El7iIgreIXg7m0vpXOe8sEmnAU4PbbTWYKMNvE/SH+VGZr48sxDztBwO7SjMK
	BdZhc5cpxJxaoaMTBOTVyjeVqNDCBuAvVekomWRN5do77d4OLl5pCURAJqlCBhKMriovc2QrQwuZG
	ZothQm+42unTc5K4QUBu16gMOAfmxD7VPAZpQAra4gzQnUVIQh5zjcHh7fSCMwg1dd2aI95n18pKR
	OpT7t5/g83h0kjDW9kTpyq5KKICUd+QkYpcYypSij537k1rY+gCPxUUkbTpxPuFoL67FegWO6RM7G
	J0FcYyhP0pcedzHP8pFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0vtA-00D7f2-3i; Wed, 07 Jul 2021 00:58:08 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0vt6-00D7dH-NQ
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 00:58:06 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20210707005801epoutp04ab95527f8e4fd84cc5172c3dce009337~PXE4mp5KL1085310853epoutp04p
 for <linux-phy@lists.infradead.org>; Wed,  7 Jul 2021 00:58:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20210707005801epoutp04ab95527f8e4fd84cc5172c3dce009337~PXE4mp5KL1085310853epoutp04p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625619481;
 bh=2dL4q0+ZJqB5tb0fyDRy/PdOF1oKWlZqMCYObQVNeog=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UDjQLN8X4fYyxxHxFzEF7sjgd7PZt+s8oplVG/mQi4VS9qmmEWtUVHbia8DcDgFaH
 5zyqhTNR7cG1QhT96dUc+MRYyhoAb12y9tApc6rgdM5iixExMYMq0JN4ipN4iwS5uS
 mNqg2iMKkY1XbPY26oi1/YRTfMumk8XDZ1s+BcXY=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20210707005800epcas2p13dc8a77c000f3a613b9c330a91997e9b~PXE4AtSVh1561515615epcas2p1O;
 Wed,  7 Jul 2021 00:58:00 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.191]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 4GKLd04Rp6z4x9Ps; Wed,  7 Jul
 2021 00:57:56 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 E7.16.09541.21CF4E06; Wed,  7 Jul 2021 09:57:54 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
 20210707005754epcas2p3a55e70f1e9a4dc9cb8120f007ddb329c~PXEx-T7w41829018290epcas2p3K;
 Wed,  7 Jul 2021 00:57:54 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20210707005754epsmtrp13face032e0196e5c2a320e0913a3f72f~PXEx_ZY6k2346523465epsmtrp1I;
 Wed,  7 Jul 2021 00:57:54 +0000 (GMT)
X-AuditID: b6c32a46-095ff70000002545-6c-60e4fc12c7ef
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 FF.CC.08289.11CF4E06; Wed,  7 Jul 2021 09:57:53 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20210707005753epsmtip2db1c2d68d718bc9ee758ec408986e994~PXExvVRYi2568225682epsmtip2W;
 Wed,  7 Jul 2021 00:57:53 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Jaehoon Chung
 <jh80.chung@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-phy@lists.infradead.org, Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v4 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
Date: Wed,  7 Jul 2021 09:57:53 +0900
Message-Id: <20210707005753.52042-3-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210707005753.52042-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupmk+LIzCtJLcpLzFFi42LZdljTVFfoz5MEg7Vz9SwezNvGZnF5v7bF
 jV9trBYXnvawWZw/v4HdYsKqbywWa4/cZbfYeecEswOHx6ZVnWwem5fUe/RtWcXocfzGdqYA
 lqgcm4zUxJTUIoXUvOT8lMy8dFsl7+B453hTMwNDXUNLC3MlhbzE3FRbJRefAF23zBygK5QU
 yhJzSoFCAYnFxUr6djZF+aUlqQoZ+cUltkqpBSk5BYaGBXrFibnFpXnpesn5uVaGBgZGpkCV
 CTkZV46KF9zWq1hzbRZLA+MP9S5GTg4JAROJi3sfMXYxcnEICexglFi2YhI7SEJI4BOjxM8X
 yRCJz4wSvX3PmGA6/iy9wQqR2MUo0Xz6HjuE8xGoY9lHVpAqNgFdiS3PXzGC2CICRRKf1j5k
 AiliFjjFKPH+2kFmkISwgLdE+5Z9YDaLgKrEpZe3wFbwCthJdD45zAqxTl7i1LKDQHEODk4B
 e4nPk+UhSgQlTs58wgJiMwOVNG+dzQwyX0LgLbvEzJYGRoheF4mHjz8xQ9jCEq+Ob2GHsKUk
 Xva3sUM0dDNKtD76D5VYzSjR2egDYdtL/Jq+hRVkMbOApsT6XfogpoSAssSRW1B7+SQ6Dv9l
 hwjzSnS0CUE0qksc2D6dBcKWleie8xnqEw+Jv7seQQNuEqPEr/9TGScwKsxC8s4sJO/MQli8
 gJF5FaNYakFxbnpqsVGBEXIEb2IEp0ottx2MU95+0DvEyMTBeIhRgoNZSYS3zudJghBvSmJl
 VWpRfnxRaU5q8SFGU2BYT2SWEk3OBybrvJJ4Q1MjMzMDS1MLUzMjCyVxXg72QwlCAumJJanZ
 qakFqUUwfUwcnFINTPtW/VDdFhGQ9vzgqeN/FaVs5xUEZbyQeBEZW3jxc5ScrXHoPxb5vM0N
 ZhzBaip12m6v9y16xPZ1/9ua7a+79Pztv3zacOdw4q+6jf/uX4hxTrrYl7npMZPDorp5Dy82
 dtytldqt2/hz/hFel0hRNdUtW6zXP2S/I7fHSco6ek2wnsC6nMIY4SXzI1VZLMKYrnq/Wbfr
 20wD2cjKHXssMjqOxCtvl97Txshl9rTgZ2LUQg/1d1O+u6Rv/J1xjLdn0soFfQKOJt0W1fKG
 m3LNZQ7oMpTuXy6gq7G5YuLK6/wKp3WPrxOTYDky8cwT6QUz2DOsV0Z71Ic9k1ukILi1LY8v
 ve6K1qJXmqKGftfOK7EUZyQaajEXFScCAIJuAm8eBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKLMWRmVeSWpSXmKPExsWy7bCSvK7gnycJBku3W1k8mLeNzeLyfm2L
 G7/aWC0uPO1hszh/fgO7xYRV31gs1h65y26x884JZgcOj02rOtk8Ni+p9+jbsorR4/iN7UwB
 LFFcNimpOZllqUX6dglcGVeOihfc1qtYc20WSwPjD/UuRk4OCQETiT9Lb7B2MXJxCAnsYJT4
 9mIhO0RCVuLZux1QtrDE/ZYjUEXvGSU23J0PlmAT0JXY8vwVI4gtIlAicX32X2aQImaBc4wS
 l68/ZQNJCAt4S7Rv2ccMYrMIqEpcenmLCcTmFbCT6HxymBVig7zEqWUHgeIcHJwC9hKfJ8uD
 hIWASjZP3ckOUS4ocXLmExYQmxmovHnrbOYJjAKzkKRmIUktYGRaxSiZWlCcm55bbFhglJda
 rlecmFtcmpeul5yfu4kRHNJaWjsY96z6oHeIkYmD8RCjBAezkghvnc+TBCHelMTKqtSi/Pii
 0pzU4kOM0hwsSuK8F7pOxgsJpCeWpGanphakFsFkmTg4pRqY4hvKWT60H1r4+O6/Dy/E+h5c
 mHl03YGTnuvuV20yi4+dscPYV5evs6bIf9nOmlfygXJ/G66eSzqtsGjT7oDDeZ4vanxsG6tD
 xbayWKlonwnbWmJgt5Zv4t7vCsqt2zVUhKcHbu3Wmjc5ZKv8b2Wn02mer5ZJb/N2/ajFcWfN
 kqVzzoSuco5Yojz/mcbX/nqzPRtCC6ep/LB+8pnZSaj9QCjrev+NDelJhydOVuSTzbJ8+aB5
 y5vvM4yPrFiVFfpKsLw480xEufU8vhsirsd/LLn3rTf2xOHtgqVnWMuV5eeflrf6VNT/Yt23
 v0/lNzUdrHylOeP7obb3T/3/STydOcuT9YJipchhE3GOtbuveyqxFGckGmoxFxUnAgDKWbhT
 2AIAAA==
X-CMS-MailID: 20210707005754epcas2p3a55e70f1e9a4dc9cb8120f007ddb329c
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210707005754epcas2p3a55e70f1e9a4dc9cb8120f007ddb329c
References: <20210707005753.52042-1-chanho61.park@samsung.com>
 <CGME20210707005754epcas2p3a55e70f1e9a4dc9cb8120f007ddb329c@epcas2p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_175805_161571_D6960002 
X-CRM114-Status: GOOD (  22.31  )
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

This patch adds to support phy-exynosautov9-ufs driver for ExynosAuto v9
series SoCs. The patch adds "samsung,exynosautov9-ufs-phy" compatible.
Unlike previous exynos ufs phy, the chip uses 0x50 offset as
PHY_TRSV_REG_CFG_OFFSET.

Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 .../bindings/phy/samsung,ufs-phy.yaml         |  1 +
 drivers/phy/samsung/Makefile                  |  3 +-
 drivers/phy/samsung/phy-exynosautov9-ufs.c    | 67 +++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
 drivers/phy/samsung/phy-samsung-ufs.h         |  8 ++-
 5 files changed, 79 insertions(+), 3 deletions(-)
 create mode 100644 drivers/phy/samsung/phy-exynosautov9-ufs.c

diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
index 636cc501b54f..f6ed1a005e7a 100644
--- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - samsung,exynos7-ufs-phy
+      - samsung,exynosautov9-ufs-phy
 
   reg:
     maxItems: 1
diff --git a/drivers/phy/samsung/Makefile b/drivers/phy/samsung/Makefile
index d55d9aa5b932..ab87b71cd90f 100644
--- a/drivers/phy/samsung/Makefile
+++ b/drivers/phy/samsung/Makefile
@@ -3,7 +3,8 @@ obj-$(CONFIG_PHY_EXYNOS_DP_VIDEO)	+= phy-exynos-dp-video.o
 obj-$(CONFIG_PHY_EXYNOS_MIPI_VIDEO)	+= phy-exynos-mipi-video.o
 obj-$(CONFIG_PHY_EXYNOS_PCIE)		+= phy-exynos-pcie.o
 obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-samsung-ufs.o \
-					phy-exynos7-ufs.o
+					phy-exynos7-ufs.o \
+					phy-exynosautov9-ufs.o
 obj-$(CONFIG_PHY_SAMSUNG_USB2)		+= phy-exynos-usb2.o
 phy-exynos-usb2-y			+= phy-samsung-usb2.o
 phy-exynos-usb2-$(CONFIG_PHY_EXYNOS4210_USB2)	+= phy-exynos4210-usb2.o
diff --git a/drivers/phy/samsung/phy-exynosautov9-ufs.c b/drivers/phy/samsung/phy-exynosautov9-ufs.c
new file mode 100644
index 000000000000..36398a15c2db
--- /dev/null
+++ b/drivers/phy/samsung/phy-exynosautov9-ufs.c
@@ -0,0 +1,67 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * UFS PHY driver data for Samsung EXYNOSAUTO v9 SoC
+ *
+ * Copyright (C) 2021 Samsung Electronics Co., Ltd.
+ */
+
+#include "phy-samsung-ufs.h"
+
+#define EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL		0x728
+#define EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL_MASK	0x1
+#define EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL_EN		BIT(0)
+
+#define PHY_TRSV_REG_CFG_AUTOV9(o, v, d) \
+	PHY_TRSV_REG_CFG_OFFSET(o, v, d, 0x50)
+
+/* Calibration for phy initialization */
+static const struct samsung_ufs_phy_cfg exynosautov9_pre_init_cfg[] = {
+	PHY_COMN_REG_CFG(0x023, 0x80, PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x01d, 0x10, PWR_MODE_ANY),
+
+	PHY_TRSV_REG_CFG_AUTOV9(0x044, 0xb5, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTOV9(0x04d, 0x43, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTOV9(0x05b, 0x20, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTOV9(0x05e, 0xc0, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTOV9(0x038, 0x12, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTOV9(0x059, 0x58, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTOV9(0x06c, 0x18, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTOV9(0x06d, 0x02, PWR_MODE_ANY),
+
+	PHY_COMN_REG_CFG(0x023, 0xc0, PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x023, 0x00, PWR_MODE_ANY),
+
+	PHY_TRSV_REG_CFG(0x042, 0x5d, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG(0x043, 0x80, PWR_MODE_ANY),
+
+	END_UFS_PHY_CFG,
+};
+
+/* Calibration for HS mode series A/B */
+static const struct samsung_ufs_phy_cfg exynosautov9_pre_pwr_hs_cfg[] = {
+	PHY_TRSV_REG_CFG(0x032, 0xbc, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG(0x03c, 0x7f, PWR_MODE_HS_ANY),
+	PHY_TRSV_REG_CFG(0x048, 0xc0, PWR_MODE_HS_ANY),
+
+	PHY_TRSV_REG_CFG(0x04a, 0x00, PWR_MODE_HS_G3_SER_B),
+	PHY_TRSV_REG_CFG(0x04b, 0x10, PWR_MODE_HS_G1_SER_B |
+				      PWR_MODE_HS_G3_SER_B),
+	PHY_TRSV_REG_CFG(0x04d, 0x63, PWR_MODE_HS_G3_SER_B),
+
+	END_UFS_PHY_CFG,
+};
+
+static const struct samsung_ufs_phy_cfg *exynosautov9_ufs_phy_cfgs[CFG_TAG_MAX] = {
+	[CFG_PRE_INIT]		= exynosautov9_pre_init_cfg,
+	[CFG_PRE_PWR_HS]	= exynosautov9_pre_pwr_hs_cfg,
+};
+
+const struct samsung_ufs_phy_drvdata exynosautov9_ufs_phy = {
+	.cfg = exynosautov9_ufs_phy_cfgs,
+	.isol = {
+		.offset = EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL,
+		.mask = EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL_MASK,
+		.en = EXYNOSAUTOV9_EMBEDDED_COMBO_PHY_CTRL_EN,
+	},
+	.has_symbol_clk = 0,
+};
diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index dd9ab1519d83..602ddef259eb 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -347,6 +347,9 @@ static const struct of_device_id samsung_ufs_phy_match[] = {
 	{
 		.compatible = "samsung,exynos7-ufs-phy",
 		.data = &exynos7_ufs_phy,
+	}, {
+		.compatible = "samsung,exynosautov9-ufs-phy",
+		.data = &exynosautov9_ufs_phy,
 	},
 	{},
 };
diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
index 5ab6ca6fa187..91a0e9f94f98 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.h
+++ b/drivers/phy/samsung/phy-samsung-ufs.h
@@ -27,14 +27,17 @@
 	.id = PHY_COMN_BLK,	\
 }
 
-#define PHY_TRSV_REG_CFG(o, v, d) {	\
+#define PHY_TRSV_REG_CFG_OFFSET(o, v, d, c) {	\
 	.off_0 = PHY_APB_ADDR((o)),	\
-	.off_1 = PHY_APB_ADDR((o) + PHY_TRSV_CH_OFFSET),	\
+	.off_1 = PHY_APB_ADDR((o) + (c)),	\
 	.val = (v),		\
 	.desc = (d),		\
 	.id = PHY_TRSV_BLK,	\
 }
 
+#define PHY_TRSV_REG_CFG(o, v, d)	\
+	PHY_TRSV_REG_CFG_OFFSET(o, v, d, PHY_TRSV_CH_OFFSET)
+
 /* UFS PHY registers */
 #define PHY_PLL_LOCK_STATUS	0x1e
 #define PHY_CDR_LOCK_STATUS	0x5e
@@ -138,5 +141,6 @@ static inline void samsung_ufs_phy_ctrl_isol(
 }
 
 extern const struct samsung_ufs_phy_drvdata exynos7_ufs_phy;
+extern const struct samsung_ufs_phy_drvdata exynosautov9_ufs_phy;
 
 #endif /* _PHY_SAMSUNG_UFS_ */
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
