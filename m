Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67487C07E9C
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:18:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2547B61986
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:18:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2547B61986
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvQT8zi2hIFbxrJl7bP4p11aC4DBef4kxrsOZ/DoZuk=; b=ycQKZIFVMpNzaE
	wYURAjo38ZT7fyWlWNBy0Qg5ZPKM4NSWz3zW4HM5CyJyEbPaB+pXbE2Zhxf0YbxgvX5h1BAyQu14B
	XvVr3wuMzcqB3GtGmvJmqxzi+CsPqAqyir/BSF41D7K0r5Qiai+BO19jfODNTThrGxuw/fIdYTTVv
	FbxVwCbk6AQAfJEgQ/AYaUb9sATGfjfAnTOvPlpaRRfjqdJiYucJcXxvF9XYS+A15V1tF1UtCF9Fv
	l31i4x80UKv3kEKPqmokOex+0ytvzs1zPZzqB9yfqAt1QO9VWwumG94Zaov+kar3y8pwyCGettPJT
	ZAeLej/hDnoXtJJgaqGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0afC-00A9VB-MC; Tue, 06 Jul 2021 02:18:18 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0af8-00A9UT-U9
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 02:18:16 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20210706021812epoutp01bd8ad6f1522ea7cf1855464e71f8a261~PEhm5XZ_U0449204492epoutp01g
 for <linux-phy@lists.infradead.org>; Tue,  6 Jul 2021 02:18:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20210706021812epoutp01bd8ad6f1522ea7cf1855464e71f8a261~PEhm5XZ_U0449204492epoutp01g
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625537892;
 bh=efiXP1NMxb9SVrBqOqZeS3M5sr5Wkjbd/KGQBV8xxpA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=o5b0zFvZVDjBvTcLkNGr9pqnuA8MFeAswl6/rFj/GXDA7syNnbbLo8UJgmZK2F/5R
 JBWAK2XVEYlgJw6N0edPcL+fADrPpWp1HfGFpVksrHrJbB23BTHB5LEPcUpmo0i/kf
 ByhmBG1s0FLV+JueOHaAK6iX7lh8j3qcdWfF6q24=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20210706021811epcas2p2bd226db12598d374297c45de9c248232~PEhmgv8Kg3129031290epcas2p2v;
 Tue,  6 Jul 2021 02:18:11 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.40.190]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 4GJmS13M56z4x9Q7; Tue,  6 Jul
 2021 02:18:09 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 D5.BD.09541.D5DB3E06; Tue,  6 Jul 2021 11:18:05 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
 20210706021805epcas2p41840eeb633ef30a5f0812862cb4df174~PEhgwgoqL3180531805epcas2p4p;
 Tue,  6 Jul 2021 02:18:05 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20210706021805epsmtrp2e9f427c67988d7c6061abcc8589af4ba~PEhgvf0ER1277512775epsmtrp2Q;
 Tue,  6 Jul 2021 02:18:05 +0000 (GMT)
X-AuditID: b6c32a47-ba108a8000002545-69-60e3bd5de52b
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1D.B6.08394.D5DB3E06; Tue,  6 Jul 2021 11:18:05 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20210706021805epsmtip17e381d2e717fb5f203f603d12b7e8ca7~PEhgfngU32215522155epsmtip1h;
 Tue,  6 Jul 2021 02:18:05 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Jaehoon Chung
 <jh80.chung@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-phy@lists.infradead.org, Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH v3 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
Date: Tue,  6 Jul 2021 11:18:04 +0900
Message-Id: <20210706021804.12890-3-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210706021804.12890-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuphk+LIzCtJLcpLzFFi42LZdljTTDd27+MEg+4uM4sH87axWVzer21x
 41cbq8WFpz1sFufPb2C3mLDqG4vF2iN32S123jnB7MDhsWlVJ5vH5iX1Hn1bVjF6HL+xnSmA
 JSrHJiM1MSW1SCE1Lzk/JTMv3VbJOzjeOd7UzMBQ19DSwlxJIS8xN9VWycUnQNctMwfoCiWF
 ssScUqBQQGJxsZK+nU1RfmlJqkJGfnGJrVJqQUpOgaFhgV5xYm5xaV66XnJ+rpWhgYGRKVBl
 Qk7G/eMsBZP1K261bGZvYFyh0cXIySEhYCKxcvduFhBbSGAHo8SzPSVdjFxA9idGiXPXb7BD
 ON8YJSZfvMcI0zHlxEyoxF5Gid6OPmYI5yOjxLKtT8Gq2AR0JbY8fwVmiwgUSXxa+5AJpIhZ
 4BSjxPtrB5lBEsIC3hIvt7aCLWcRUJW4++kcK4jNK2AnMfHMHKh18hKnlh1kArE5Bewl/rYu
 Y4aoEZQ4OfMJWC8zUE3z1tlgV0gIPGKX2L7/MwtEs4vE2h+zoQYJS7w6voUdwpaS+PxuLxtE
 QzejROuj/1CJ1YwSnY0+ELa9xK/pW4Au4gDaoCmxfpc+iCkhoCxx5BbUXj6JjsN/2SHCvBId
 bUIQjeoSB7ZPh7pAVqJ7zmdWCNtD4u7H39DAmsQo0bHkAtMERoVZSN6ZheSdWQiLFzAyr2IU
 Sy0ozk1PLTYqMEaO4U2M4GSp5b6DccbbD3qHGJk4GA8xSnAwK4nwikx5lCDEm5JYWZValB9f
 VJqTWnyI0RQY2BOZpUST84HpOq8k3tDUyMzMwNLUwtTMyEJJnJeD/VCCkEB6YklqdmpqQWoR
 TB8TB6dUA9OiBc8Fps45KRIgLsFoqNj/+u1KKYGn5nNWPPGw8TaotGL5N7GA9z/DO4vFh14s
 l5aa6yZ7gc9qZeG1v9WvTk1UCchyVfo1edZybpbkbev4lnm1Rgfb/V962v/nzUDb4Oq3B/8a
 GPyxm/+toPQqd68j72k1g/9/NK+Kus6s0300pXryjVtpiakn3J58UXkbddTg1Yzn3/Xn8EXu
 DwmrSrcx3BpQmadbe/Pn+5QzVx3WMJ77MO3iHbZrbbdVNq39ZLpFuiW3eW9H6OwHKfYXe+bN
 6NrK+9vrjLHjTOurbuvycr9pbGoonX2ohuXfyuufaz/LKp2+bqN7/4x5wCOryITKz7wpCry+
 V1oCBA7oH1yuxFKckWioxVxUnAgAVFOT8B8EAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrCLMWRmVeSWpSXmKPExsWy7bCSnG7s3scJBg9uiVo8mLeNzeLyfm2L
 G7/aWC0uPO1hszh/fgO7xYRV31gs1h65y26x884JZgcOj02rOtk8Ni+p9+jbsorR4/iN7UwB
 LFFcNimpOZllqUX6dglcGfePsxRM1q+41bKZvYFxhUYXIyeHhICJxJQTM9lBbCGB3YwSPZtZ
 IOKyEs/e7WCHsIUl7rccYYWoec8o0fTIDMRmE9CV2PL8FSOILSJQInF99l/mLkYuDmaBc4wS
 l68/ZQNJCAt4S7zc2go2lEVAVeLup3Ngg3gF7CQmnpnDCLFAXuLUsoNMIDangL3E39ZlzBDL
 7CTeTn3CBlEvKHFy5hOwOcxA9c1bZzNPYBSYhSQ1C0lqASPTKkbJ1ILi3PTcYsMCw7zUcr3i
 xNzi0rx0veT83E2M4IDW0tzBuH3VB71DjEwcjIcYJTiYlUR4RaY8ShDiTUmsrEotyo8vKs1J
 LT7EKM3BoiTOe6HrZLyQQHpiSWp2ampBahFMlomDU6qBKf7HuZf7c8rCs48rH1c6JTdvtYMI
 q1rwrmVHJGdFi7IU+d507Y+W316xomLxbZd+zbW/BPIin5RpL3htPYGheGFRT35w+lXhQKnd
 2Rl+lZseCed0Sjdo2z6tZHzJe+OfwG7Pnw9N3eyF/p0/fozJ6M4z4WaBBdx7f0ive9R4+cVu
 wxVNnCmNpx3qP+7O4lBsPPT2xp8167beOXj35eMujQMl7F7zeK0rvi+fWBUSo3n+oYFXwaoP
 FazrX1cn8L2IKng5K0D5Rnme0Tyhq4LX7t/a8eZz1uUDnJz+s9ZtOCLaXJWlv/fhFUWP8v7j
 9W+VZif1FKzZZlAxp8qNd+HytGmaZ8r8TulJPClfqb5lmxJLcUaioRZzUXEiAKGz3SbXAgAA
X-CMS-MailID: 20210706021805epcas2p41840eeb633ef30a5f0812862cb4df174
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210706021805epcas2p41840eeb633ef30a5f0812862cb4df174
References: <20210706021804.12890-1-chanho61.park@samsung.com>
 <CGME20210706021805epcas2p41840eeb633ef30a5f0812862cb4df174@epcas2p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_191815_336150_EC12E266 
X-CRM114-Status: GOOD (  24.55  )
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
