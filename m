Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34004C07E99
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:06:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EC9F06196A
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:06:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EC9F06196A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lv/DlAtkkvYh1zNgSMsdHb+2T705Ej+HgkX+297BjJw=; b=DYEwCm2aqJCQFN
	P2FMZWwE2UpHiZz+XoIffsIO5X5uk+ujk2PrcNhQo5usExYSajKpG/wtKtYwOgSnkVijtL8z1ieqY
	prblrGXIP7SsONKSOygLfOgFDIu5Oali4neVUt//TGvOzR+YYz/Y/EFu9c3B2CacX+7I/pGl+bBNr
	jCG2zJscTPtyoT5yy3qAxph7ZYDBHtKXLvVkz+Yfx5USLxlv0HssQvpcPNK54ldi4vqXStKh7Ypdk
	6GKzaVJ0g3HV97RSqOYq9tIsI9vPNFcxqJ3DDjZWvmi44nfHSou3OYtlOZOpm8473DPZomdGUN4KT
	M9kfhRil2XlfAA7stO5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0aTf-00A8yf-GW; Tue, 06 Jul 2021 02:06:23 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0aTb-00A8xR-OK
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 02:06:21 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20210706020616epoutp02038c0e2d536d5e3aa3ef268b8e03dfc8~PEXMdTcB12905529055epoutp02c
 for <linux-phy@lists.infradead.org>; Tue,  6 Jul 2021 02:06:16 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20210706020616epoutp02038c0e2d536d5e3aa3ef268b8e03dfc8~PEXMdTcB12905529055epoutp02c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625537176;
 bh=y84IASXZEhRalGhGPjGYxW9Aku5VfltuIofgl8fD4os=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tMMlBPugNnl7CdcqessRebyTF9SFCnWJYgGBHPbbJyB76Tln8T79YfFJjs7G0D580
 UjzeMRkyyskyzk4qR8XUGpkSlCSCxzYrMICrG6ZMXtVxVfMAmCCVotUxoBcgjc1+ct
 xOGnz0P0SRFIr4/7XoebvHZDmkjHv/gl2sfL9Hr0=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20210706020615epcas2p43a0e46933ebfd7b2f0702d4d35612142~PEXLKPJWB1139911399epcas2p4N;
 Tue,  6 Jul 2021 02:06:15 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.40.186]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 4GJmBF1Pqwz4x9Pw; Tue,  6 Jul
 2021 02:06:13 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 27.B3.09921.39AB3E06; Tue,  6 Jul 2021 11:06:11 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
 20210706020611epcas2p47fd1367425d1bac79c7ec983c21086b8~PEXHVTHcR1139911399epcas2p4D;
 Tue,  6 Jul 2021 02:06:11 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20210706020611epsmtrp21a1b7c57059815b3d405b24eca14f156~PEXHUfzZ-0745307453epsmtrp29;
 Tue,  6 Jul 2021 02:06:11 +0000 (GMT)
X-AuditID: b6c32a45-fb3ff700000026c1-4a-60e3ba93bbef
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 12.65.08394.29AB3E06; Tue,  6 Jul 2021 11:06:10 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20210706020610epsmtip25aaaf05886963dbdbd688132406759b1~PEXHJ7-BT2707527075epsmtip2U;
 Tue,  6 Jul 2021 02:06:10 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Jaehoon Chung
 <jh80.chung@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-phy@lists.infradead.org, Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v2 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
Date: Tue,  6 Jul 2021 11:06:25 +0900
Message-Id: <20210706020625.117400-3-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210706020625.117400-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupik+LIzCtJLcpLzFFi42LZdljTXHfyrscJBq8OKFs8mLeNzeLyfm2L
 G7/aWC0uPO1hszh/fgO7xYRV31gs1h65y26x884JZgcOj02rOtk8Ni+p9+jbsorR4/iN7UwB
 LFE5NhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAVygp
 lCXmlAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCgwNC/SKE3OLS/PS9ZLzc60MDQyMTIEq
 E3IyjndvZiw4qV/RsamXvYHxtkYXIyeHhICJxI7206xdjFwcQgI7GCWOHf3BApIQEvjEKDH9
 rTZE4hujxL5Ln9hgOiZO2ARVtJdRYuN6doiij4wSn7ZtZAdJsAnoSmx5/ooRxBYRKJL4tPYh
 E0gRs8ApRon31w4ygySEBbwlnh5cAFbEIqAq8fTvejCbV8Be4uaEiawQ2+QlTi07yARicwo4
 SDxqmMoKUSMocXLmE7ArmIFqmrfOZoaof8ku8bbJA8J2kdj49BQThC0s8er4FnYIW0ri87u9
 bCAHSQh0M0q0PvoPlVjNKNHZ6ANh20v8mr4FaBkH0AJNifW79EFMCQFliSO3oNbySXQc/ssO
 EeaV6GgTgmhUlziwfToLhC0r0T3nMytEiYdEw68QSFBNZpR4+Gsn2wRGhVlInpmF5JlZCHsX
 MDKvYhRLLSjOTU8tNiowRI7fTYzgRKnluoNx8tsPeocYmTgYDzFKcDArifCKTHmUIMSbklhZ
 lVqUH19UmpNafIjRFBjUE5mlRJPzgak6ryTe0NTIzMzA0tTC1MzIQkmcl4P9UIKQQHpiSWp2
 ampBahFMHxMHp1QDk766+s91pY9+GhX+5Nxz8Vjo9YT+R9e3lpxP+fPrcMOrDbsZC6ffkHUq
 eFPlrnr709WTl/Teb3/14ab2jl2FzM/eqj2Pv/t/7TvlIyuEnqZo350r2s93rsk1t0Hbqs9/
 ThjXWs/1C8+u3RvZ/fO0nnhe/eKJExLf8a4qi3qapCS+V6kk/gPzs/crrihnTP7kEWn8dlLj
 vtNTw+Lvyeto3uzTsd8xpz2DS8OsfRfnh/Tl15RX3y4JjF6eyK6XPvHr1nmHvW32rlTfVeWe
 ZL/twCpx670P19xs+8DeuSLaYxHP7H//nnDu/BFVN7W1iCNSdNpcGSn5STx/rcMmfCvfx3pe
 vlZuhdkKubzPQfpWTIuUWIozEg21mIuKEwHNYm79HQQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOLMWRmVeSWpSXmKPExsWy7bCSvO6kXY8TDO4ssrZ4MG8bm8Xl/doW
 N361sVpceNrDZnH+/AZ2iwmrvrFYrD1yl91i550TzA4cHptWdbJ5bF5S79G3ZRWjx/Eb25kC
 WKK4bFJSczLLUov07RK4Mo53b2YsOKlf0bGpl72B8bZGFyMnh4SAicTECZtYuhi5OIQEdjNK
 /P00jxEiISvx7N0OdghbWOJ+yxFWiKL3jBITXxxkA0mwCehKbHn+CqxBRKBE4vrsv8wgRcwC
 5xglLl9/ClYkLOAt8fTgArAiFgFViad/14PZvAL2EjcnTGSF2CAvcWrZQSYQm1PAQeJRw1Sw
 uBBQTffq/ewQ9YISJ2c+YQGxmYHqm7fOZp7AKDALSWoWktQCRqZVjJKpBcW56bnFhgWGeanl
 esWJucWleel6yfm5mxjBYa2luYNx+6oPeocYmTgYDzFKcDArifCKTHmUIMSbklhZlVqUH19U
 mpNafIhRmoNFSZz3QtfJeCGB9MSS1OzU1ILUIpgsEwenVANTW2JVXkPaU7niST4Z9YWn8tle
 +HhZcvjs+nbjl5vv3Wcf9Kfm/lPInfanzPZeCefij7tPl085t2TLNJ/76oW2/3lzL9vMuPdY
 7mRF7eTy5L9JZkE/fH9GMO84dv2Cf/rZhz/YTeI8N/G2s3e++flBYH5Jjcri9GfNypG2/llP
 lGyqy2elHz/SeSznvUhy2CHPkGUVRkr1no8733Ka2v9Tsj4jGMTdu0k752hia7F+3ALrTdlX
 JtR8KSxvPnbt+sOMRu+Ynlj3tfzN0eI6nudzZ044bNO+Rf/Lz5ba1UwuJ6z//voUc/NE+2MV
 /Wa1qV//7vm9Yf8mA5OTVpsN/lpELfsx86bVBV/tM0nJL+YosRRnJBpqMRcVJwIAEGT5gNoC
 AAA=
X-CMS-MailID: 20210706020611epcas2p47fd1367425d1bac79c7ec983c21086b8
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210706020611epcas2p47fd1367425d1bac79c7ec983c21086b8
References: <20210706020625.117400-1-chanho61.park@samsung.com>
 <CGME20210706020611epcas2p47fd1367425d1bac79c7ec983c21086b8@epcas2p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_190620_182638_BBF27330 
X-CRM114-Status: GOOD (  22.32  )
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

Change-Id: I4ea333d4565af537c26a8876d1b27144eea3c3c6
Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 .../bindings/phy/samsung,ufs-phy.yaml         |  1 +
 drivers/phy/samsung/Makefile                  |  3 +-
 drivers/phy/samsung/phy-exynosautov9-ufs.c    | 70 +++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
 drivers/phy/samsung/phy-samsung-ufs.h         |  8 ++-
 5 files changed, 82 insertions(+), 3 deletions(-)
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
index 000000000000..9ab79e018724
--- /dev/null
+++ b/drivers/phy/samsung/phy-exynosautov9-ufs.c
@@ -0,0 +1,70 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * UFS PHY driver data for Samsung EXYNOSAUTO v9 SoC
+ *
+ * Copyright (C) 2021 Samsung Electronics Co., Ltd.
+ */
+
+#include <linux/io.h>
+#include <linux/phy/phy.h>
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
index 1532d239ff0e..b9b85d55a2d5 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.h
+++ b/drivers/phy/samsung/phy-samsung-ufs.h
@@ -26,14 +26,17 @@
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
@@ -137,5 +140,6 @@ static inline void samsung_ufs_phy_ctrl_isol(
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
