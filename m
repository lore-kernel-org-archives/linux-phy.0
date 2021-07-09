Return-Path: <SRS0=210v=MB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00F0CC07E9C
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 10:00:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9FD43613D1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 10:00:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9FD43613D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+vzOQyCAGBPhu+JVyDeeeixmLDvz8Mu6IXQQk3eUIY=; b=AaMlcxlxSE1FyG
	Cx5HYlPMjE5VuDoi0XedCkUrlR2WL1f1nBo9X/4TzOpudkguhyxa9XGCVe5kQXylOSlmb3aft2hlt
	4FnU06sCHcifgxRGOVlYs3KYpFGtUrkg9nIsK/0lzerCkqPxy8GmZUeFofAtEdt9MvxGQFb0+e18z
	X8gpxblnGADGH4nHh/g7H5gzqbLuq84KtflfMR3xUaXtNsMoaK+r3+uAmHv40+/JvttVto+QIDhKl
	Z36R/ip4ZV0TJRmTpZbgR6YnfSfuRQh+/E9ELxGYUldoB4soJg/bTE/EXyodXWbn5Q2vWA+BEHKcz
	bvZczI0kIW4CaeQcIS7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1nJR-001Qx6-39; Fri, 09 Jul 2021 10:00:49 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1nJM-001QuN-LG
 for linux-phy@lists.infradead.org; Fri, 09 Jul 2021 10:00:47 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20210709100041epoutp04977ffe3fe274ea5140a334faed34d736~QFxQ6_BRJ2783727837epoutp04y
 for <linux-phy@lists.infradead.org>; Fri,  9 Jul 2021 10:00:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20210709100041epoutp04977ffe3fe274ea5140a334faed34d736~QFxQ6_BRJ2783727837epoutp04y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625824841;
 bh=fNTHm5Z+esggbELx7RyoaaKO3J/pIeXzk2KMRLboQmc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uEvioc0EhDbZMgMwcvYmFNChVOzVak+Rro87d9Z7bwPr87DRN0ZSSgc6HuAYAIf5w
 IDCXbtUr8KAcUSAZQuXFrxjYq7XNDNmkNg1VmlfUCNi/9i4Be6xMTr4gaqB4YztpPm
 PNkLfuFiNfP2Wf7Yfhw1gFFWPkE+mKIhvNFMi1DU=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20210709100040epcas2p393e9f10d274298a83ebb252badca6417~QFxQabw3N2776127761epcas2p3H;
 Fri,  9 Jul 2021 10:00:40 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.184]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 4GLpZG4Jytz4x9Q0; Fri,  9 Jul
 2021 10:00:38 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 9B.0B.09541.64E18E06; Fri,  9 Jul 2021 19:00:38 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20210709100038epcas2p231dc148962cc46065f7a896e7d30cbba~QFxOBWZcZ1046410464epcas2p2a;
 Fri,  9 Jul 2021 10:00:38 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20210709100037epsmtrp27b69e2675fd5e05348c50eb67a03646c~QFxN-Rklf2381723817epsmtrp2H;
 Fri,  9 Jul 2021 10:00:37 +0000 (GMT)
X-AuditID: b6c32a46-0abff70000002545-7e-60e81e46839b
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 4A.4A.08289.54E18E06; Fri,  9 Jul 2021 19:00:37 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20210709100037epsmtip1ad1fb069b0e5e5e1ba7910bc8064cb3b~QFxN0PDYV1194511945epsmtip1x;
 Fri,  9 Jul 2021 10:00:37 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Jaehoon Chung
 <jh80.chung@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-phy@lists.infradead.org, Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v5 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
Date: Fri,  9 Jul 2021 18:45:24 +0900
Message-Id: <20210709094524.110193-3-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210709094524.110193-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuphk+LIzCtJLcpLzFFi42LZdljTTNdN7kWCwc1PUhYP5m1js7i8X9vi
 xq82VosLT3vYLM6f38BuMWHVNxaLtUfuslvsvHOC2YHDY9OqTjaPzUvqPfq2rGL0OH5jO1MA
 S1SOTUZqYkpqkUJqXnJ+SmZeuq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7QFUoK
 ZYk5pUChgMTiYiV9O5ui/NKSVIWM/OISW6XUgpScAkPDAr3ixNzi0rx0veT8XCtDAwMjU6DK
 hJyM/XPfMBZ06VWsbNnI3MC4Rb2LkZNDQsBEYvq6m0xdjFwcQgI7GCUeX/jHDOF8YpQ4t3wK
 O4TzmVGivXkSK0zLmTvrmUFsIYFdjBJfHsVBFH1klLi4/iEbSIJNQFdiy/NXjCC2iECRxKe1
 D8F2MAucYpR4f+0gWLewgLfE7ru3wKayCKhKPP/6FqyZV8BeYsX9ZVDb5CVOLTvIBGJzCjhI
 /N04gxGiRlDi5MwnLCA2M1BN89bZYHdLCDxil5j+eR07RLOLxIVfTWwQtrDEq+NboOJSEp/f
 7WWDaOhmlGh99B8qsZpRorPRB8K2l/g1fQvQFRxAGzQl1u/SBzElBJQljtyC2ssn0XH4LztE
 mFeio00IolFd4sD26SwQtqxE95zPrBAlHhIT53hBwmoyo8TU/28YJzAqzELyzSwk38xC2LuA
 kXkVo1hqQXFuemqxUYERcgxvYgQnSy23HYxT3n7QO8TIxMF4iFGCg1lJhNdoxrMEId6UxMqq
 1KL8+KLSnNTiQ4ymwLCeyCwlmpwPTNd5JfGGpkZmZgaWphamZkYWSuK8HOyHEoQE0hNLUrNT
 UwtSi2D6mDg4pRqYNs2o6t5cyRWk2SGYUByTJxErmfZt5najkyoSgk7Pft7fEdP458B61oeT
 vxSkiZ5qDpt2raZO7/mJw2t3CxrvM+K2zXS0muzFu317Q7XUl5Vbpuc+bgw1PSDSevTisfxz
 /zdtec7cbnptyYyrxhxud+ZmfrH/M+O8i0Wzb/I+fpYd6wr3Tj/OduSyQaiMcijriqn/VvM3
 T5sbL9Ep9K9pveu63yuWpH689mnime9xk01l8i6o/pX4vMxWRijDrdrYuMZ0zqFnn5ezH1z0
 9fayw6elep8aX1+5YFfs0dy9ed3fMo/xfd3+9wQ/W/WEwpcuZi/lF3DFTm0S/3Fj108TycO+
 k9YZPpnltjmw+cCei/JKLMUZiYZazEXFiQBi2gKaHwQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKLMWRmVeSWpSXmKPExsWy7bCSnK6r3IsEg8tvzCwezNvGZnF5v7bF
 jV9trBYXnvawWZw/v4HdYsKqbywWa4/cZbfYeecEswOHx6ZVnWwem5fUe/RtWcXocfzGdqYA
 ligum5TUnMyy1CJ9uwSujP1z3zAWdOlVrGzZyNzAuEW9i5GTQ0LAROLMnfXMILaQwA5GieVL
 FCHishLP3u1gh7CFJe63HGGFqHnPKNFzXBbEZhPQldjy/BUjiC0iUCJxffZfoDlcHMwC5xgl
 Ll9/ygaSEBbwlth99xZYM4uAqsTzr2/B4rwC9hIr7i9jhVggL3Fq2UEmEJtTwEHi78YZjBDL
 7CW+t6xkhKgXlDg58wkLiM0MVN+8dTbzBEaBWUhSs5CkFjAyrWKUTC0ozk3PLTYsMMpLLdcr
 TswtLs1L10vOz93ECA5pLa0djHtWfdA7xMjEwXiIUYKDWUmE12jGswQh3pTEyqrUovz4otKc
 1OJDjNIcLErivBe6TsYLCaQnlqRmp6YWpBbBZJk4OKUamA7GeVTpnuGcvvv9ZxMf4eOh5+23
 b6r5skV6gUFq/deFFc3n9u2KjJpo7ROd/2hT2or2hQp138V8c7kX+rwXMmpnVprGY9kWduRi
 aLWn1VVzEx63yCXtp27+WGTa6p0TxXP9xxWB7Xanwx4sZZyYb3+pdtWlnOV53l3Lkmoye6Nn
 lDa9X1U7RdqU3aJpbccXj4qVa9j3nay2XJ7elPZARLg2r17TzcvT4W9FzOTZx15LS5b5toRm
 WT2w52Vbp1qgoiJg/u6XrqS3WVJYqmLwtG1nmzgdJrq/jveL/lJ1zv71GsefhxwnTXkce9CW
 6eTz2OnXVur3rK7sthQ4yiD6Wix67eSS45KOD7cKqk5SYinOSDTUYi4qTgQAjoqNBtgCAAA=
X-CMS-MailID: 20210709100038epcas2p231dc148962cc46065f7a896e7d30cbba
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210709100038epcas2p231dc148962cc46065f7a896e7d30cbba
References: <20210709094524.110193-1-chanho61.park@samsung.com>
 <CGME20210709100038epcas2p231dc148962cc46065f7a896e7d30cbba@epcas2p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_030045_153412_A8630ABF 
X-CRM114-Status: GOOD (  21.40  )
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
 drivers/phy/samsung/Makefile                  |  1 +
 drivers/phy/samsung/phy-exynosautov9-ufs.c    | 67 +++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
 drivers/phy/samsung/phy-samsung-ufs.h         |  8 ++-
 5 files changed, 78 insertions(+), 2 deletions(-)
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
index 68518ae30c1b..65e4cc59403f 100644
--- a/drivers/phy/samsung/Makefile
+++ b/drivers/phy/samsung/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_PHY_EXYNOS_PCIE)		+= phy-exynos-pcie.o
 obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-exynos-ufs.o
 phy-exynos-ufs-y			+= phy-samsung-ufs.o
 phy-exynos-ufs-y			+= phy-exynos7-ufs.o
+phy-exynos-ufs-y			+= phy-exynosautov9-ufs.o
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
