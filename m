Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 490FDC07E99
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:18:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0814A6196A
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:18:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0814A6196A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eRDfUcLO+i+OPg6qcBRBU4mzfpeUZGD+kZfS4j+1Vs0=; b=UrWgo8wWb571uf
	DIVCdOTwO9vfm3K5AUL2a+iBGCQ1olM3J5yVomw3Wxwg8baFuH2bVlG0S7dc+WuK196fABnPod+h7
	65VWOtoXaZva3vWATNh1VlrJ3yjksNgFZ/afr1U403alwJuIun3X7X/t1y4DO8RHEIYYoHTJAnc2U
	m5qEwS8mXm7m9Vosxx9BrAMZl/2Lekyhxyysq/Nn9p/Mz/SMuoHviEAvaudMjUkQjuzznJ7veVUCx
	5Fbv7ls8iYN2fmS5EO55b0Yq85ueQogO4vlwKQnZ/OPGCfhzg4EfcRFyGnzQP5x0ni2I+hUMLhBC1
	YBS7CKOCZ16jy3SqfcOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0afC-00A9V6-IY; Tue, 06 Jul 2021 02:18:18 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0af8-00A9UP-UA
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 02:18:16 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20210706021810epoutp012895124a499cc40186bd7c73b893da61~PEhlq7_dd0523805238epoutp01h
 for <linux-phy@lists.infradead.org>; Tue,  6 Jul 2021 02:18:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20210706021810epoutp012895124a499cc40186bd7c73b893da61~PEhlq7_dd0523805238epoutp01h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625537890;
 bh=V5o/CnhXRprqiDRSQ2H/8ZGTxDY3PiAh+858hlnyCKQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cLTEH2Km/4Aubvo7ZHGYlxyIHamI/Rqqh8h5mDQ6Epcj3Cgp/Y0z25uWBmpvnMCNU
 oRvDEp8EVpvwMRTkzH3BiC4xAtLekb/L6/oXkOAze/XqUAPiClZKW2ilf1TgriL8ZZ
 pKa5t/oVZqI4uS/lcGcrmZzjhurgQzgSKZPQ5WxA=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20210706021810epcas2p32047b37986ccf9f01e3a9727c8a30b09~PEhlKGjhR3099430994epcas2p3M;
 Tue,  6 Jul 2021 02:18:10 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.40.189]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 4GJmS02Rmzz4x9Q1; Tue,  6 Jul
 2021 02:18:08 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 1D.AD.09541.D5DB3E06; Tue,  6 Jul 2021 11:18:05 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20210706021804epcas2p1d99074348847a8afe173bdcf80eeac76~PEhgGgl9L1789217892epcas2p1c;
 Tue,  6 Jul 2021 02:18:04 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20210706021804epsmtrp116eb73983974d7bb0b3601259ba3668a~PEhgFwfrw0542505425epsmtrp1c;
 Tue,  6 Jul 2021 02:18:04 +0000 (GMT)
X-AuditID: b6c32a47-ba108a8000002545-62-60e3bd5d7a53
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 1C.B6.08394.C5DB3E06; Tue,  6 Jul 2021 11:18:04 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20210706021804epsmtip139d9a4c54c4055a359f22402e3a4dc42~PEhf5Ax3Q2230822308epsmtip1b;
 Tue,  6 Jul 2021 02:18:04 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Jaehoon Chung
 <jh80.chung@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-phy@lists.infradead.org, Chanho Park <chanho61.park@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v3 1/2] phy: samsung-ufs: move phy-exynos7-ufs header
Date: Tue,  6 Jul 2021 11:18:03 +0900
Message-Id: <20210706021804.12890-2-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210706021804.12890-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprKJsWRmVeSWpSXmKPExsWy7bCmmW7s3scJBmv+CVk8mLeNzeLyfm2L
 G7/aWC0uPO1hszh/fgO7xca3P5gsJqz6xmKx9shddoudd04wO3B6zGroZfPYtKqTzWPzknqP
 vi2rGD2O39jOFMAalWOTkZqYklqkkJqXnJ+SmZduq+QdHO8cb2pmYKhraGlhrqSQl5ibaqvk
 4hOg65aZA3SPkkJZYk4pUCggsbhYSd/Opii/tCRVISO/uMRWKbUgJafA0LBArzgxt7g0L10v
 OT/XytDAwMgUqDIhJ2P5w9ssBfMlKx697mVqYNwl2sXIySEhYCLR+LaNGcQWEtjBKPHuR2oX
 IxeQ/YlRYtHaN6wQzjdGiQNnj7LBdDx68ZYFIrGXUWLiuXWMEM5HRomX3++wglSxCehKbHn+
 ihHEFhEokvi09iETiM0s0MokceRmOIgtLOAqcfrWN7B6FgFViUlPdoDZvAJ2EreenGGG2CYv
 cWrZQbBeTgF7ib+ty5ghagQlTs58wgIxU16ieetsZpAjJAR+sktceHUTaBAHkOMisWBhEMQc
 YYlXx7ewQ9hSEi/729gh6rsZJVof/YdKrGaU6Gz0gbDtJX5N3wI2h1lAU2L9Ln2IkcoSR25B
 reWT6Dj8lx0izCvR0SYE0agucWD7dBYIW1aie85nVgjbQ6Lz0i9oUE1ilLj87A/zBEaFWUi+
 mYXkm1kIixcwMq9iFEstKM5NTy02KjBGjuBNjOD0qeW+g3HG2w96hxiZOBgPMUpwMCuJ8IpM
 eZQgxJuSWFmVWpQfX1Sak1p8iNEUGNYTmaVEk/OBCTyvJN7Q1MjMzMDS1MLUzMhCSZyXg/1Q
 gpBAemJJanZqakFqEUwfEwenVAPT9JrHk4I3FaXo/3p+zsPtzqZdzcZlNYWTopKlN8Y6TV7k
 aqn0otbHa+OksHlqqxQmP//kEJntHTbx0IeZl/gqZXqOJjcq/3n94mPo75K4V4oF/G4rrn3c
 1tIhcVls0SvDZ/u85JnL7zkt+Te30e/hhyvNk1j711/RllvHYarq++jOUWXlL1sXaUr5H0n4
 5JlfM+dbnObaVTuSGnV+n7Nf2uH248DWY7k8IsYljbGF7J0qLmFruD3NmuSto6Pijot+CFa9
 GPq7uJv/3qGqpsjLvO/efhPKjru/smCTSaXGz/vZ+q9sl0yxVLgbvHVWirHrsTzvN96Cn+ZH
 ///mzbT2yqkWqyvr7xjIvnn+6PEDJZbijERDLeai4kQAd3JYeigEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrALMWRmVeSWpSXmKPExsWy7bCSnG7M3scJBosuals8mLeNzeLyfm2L
 G7/aWC0uPO1hszh/fgO7xca3P5gsJqz6xmKx9shddoudd04wO3B6zGroZfPYtKqTzWPzknqP
 vi2rGD2O39jOFMAaxWWTkpqTWZZapG+XwJWx/OFtloL5khWPXvcyNTDuEu1i5OSQEDCRePTi
 LUsXIxeHkMBuRoktL46wQSRkJZ6928EOYQtL3G85wgpiCwm8Z5RYtDEHxGYT0JXY8vwVI4gt
 IlAicX32X2aQQcwCnUwSDTf+MoEkhAVcJU7f+gbWzCKgKjHpyQ4wm1fATuLWkzPMEAvkJU4t
 OwhWzylgL/G3dRkzxDI7ibdTn7BB1AtKnJz5hAXEZgaqb946m3kCo8AsJKlZSFILGJlWMUqm
 FhTnpucWGxYY5qWW6xUn5haX5qXrJefnbmIEB7qW5g7G7as+6B1iZOJgPMQowcGsJMIrMuVR
 ghBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHeC10n44UE0hNLUrNTUwtSi2CyTBycUg1MS+ZV+t7f
 Jnow94K6/xvf1kDJN+syrQ98nftu52rBHflnnxyZkfpj5jLp0OeuP75a9SZn2DHadTM1Nkha
 ly9Urbdc1jCtlXMHo/Wh7B18JmZT9QtsvRdW7jwRwcfrEsOlV/Azs+fx/u9XH3J7R5XwLWTl
 MnN6HKuxeFXVpfs3j9hqzJVU8sv50+Zw+HlibNm6R/vfP3qT+KWoxr0w+f+kybpnfEv6mi1m
 6L7htZhzr9pQ1e5Vv5H8nu2Pu/cc068NVndZG6R65KyP4ckGTZ6WbSaiaScWxxSuK3i1+dLX
 8v0RT6+t7mRK+no8QI2hY8rr/b0eu4zij3K5Vs4IYj2R7fWracuCLJUtPsdP5+1WYinOSDTU
 Yi4qTgQAq4yvm+MCAAA=
X-CMS-MailID: 20210706021804epcas2p1d99074348847a8afe173bdcf80eeac76
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210706021804epcas2p1d99074348847a8afe173bdcf80eeac76
References: <20210706021804.12890-1-chanho61.park@samsung.com>
 <CGME20210706021804epcas2p1d99074348847a8afe173bdcf80eeac76@epcas2p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_191815_367726_594D7609 
X-CRM114-Status: GOOD (  18.49  )
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

Instead of using exynos7 ufs definition in phy-exynos7-ufs.h, we should
put it into phy-exynos7-ufs.c to be included different objects or units.

Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 drivers/phy/samsung/Makefile                          |  3 ++-
 .../samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c}  | 11 +++++------
 drivers/phy/samsung/phy-samsung-ufs.h                 |  4 +++-
 3 files changed, 10 insertions(+), 8 deletions(-)
 rename drivers/phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c} (93%)

diff --git a/drivers/phy/samsung/Makefile b/drivers/phy/samsung/Makefile
index 3959100fe8a2..d55d9aa5b932 100644
--- a/drivers/phy/samsung/Makefile
+++ b/drivers/phy/samsung/Makefile
@@ -2,7 +2,8 @@
 obj-$(CONFIG_PHY_EXYNOS_DP_VIDEO)	+= phy-exynos-dp-video.o
 obj-$(CONFIG_PHY_EXYNOS_MIPI_VIDEO)	+= phy-exynos-mipi-video.o
 obj-$(CONFIG_PHY_EXYNOS_PCIE)		+= phy-exynos-pcie.o
-obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-samsung-ufs.o
+obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-samsung-ufs.o \
+					phy-exynos7-ufs.o
 obj-$(CONFIG_PHY_SAMSUNG_USB2)		+= phy-exynos-usb2.o
 phy-exynos-usb2-y			+= phy-samsung-usb2.o
 phy-exynos-usb2-$(CONFIG_PHY_EXYNOS4210_USB2)	+= phy-exynos4210-usb2.o
diff --git a/drivers/phy/samsung/phy-exynos7-ufs.h b/drivers/phy/samsung/phy-exynos7-ufs.c
similarity index 93%
rename from drivers/phy/samsung/phy-exynos7-ufs.h
rename to drivers/phy/samsung/phy-exynos7-ufs.c
index 518923141958..657b58319c14 100644
--- a/drivers/phy/samsung/phy-exynos7-ufs.h
+++ b/drivers/phy/samsung/phy-exynos7-ufs.c
@@ -1,11 +1,12 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * UFS PHY driver data for Samsung EXYNOS7 SoC
  *
  * Copyright (C) 2020 Samsung Electronics Co., Ltd.
  */
-#ifndef _PHY_EXYNOS7_UFS_H_
-#define _PHY_EXYNOS7_UFS_H_
+
+#include <linux/io.h>
+#include <linux/phy/phy.h>
 
 #include "phy-samsung-ufs.h"
 
@@ -68,7 +69,7 @@ static const struct samsung_ufs_phy_cfg *exynos7_ufs_phy_cfgs[CFG_TAG_MAX] = {
 	[CFG_POST_PWR_HS]	= exynos7_post_pwr_hs_cfg,
 };
 
-static struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
+const struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
 	.cfg = exynos7_ufs_phy_cfgs,
 	.isol = {
 		.offset = EXYNOS7_EMBEDDED_COMBO_PHY_CTRL,
@@ -77,5 +78,3 @@ static struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
 	},
 	.has_symbol_clk = 1,
 };
-
-#endif /* _PHY_EXYNOS7_UFS_H_ */
diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
index 5de78710524c..1532d239ff0e 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.h
+++ b/drivers/phy/samsung/phy-samsung-ufs.h
@@ -10,6 +10,8 @@
 #ifndef _PHY_SAMSUNG_UFS_
 #define _PHY_SAMSUNG_UFS_
 
+#include <linux/regmap.h>
+
 #define PHY_COMN_BLK	1
 #define PHY_TRSV_BLK	2
 #define END_UFS_PHY_CFG { 0 }
@@ -134,6 +136,6 @@ static inline void samsung_ufs_phy_ctrl_isol(
 			   phy->isol->mask, isol ? 0 : phy->isol->en);
 }
 
-#include "phy-exynos7-ufs.h"
+extern const struct samsung_ufs_phy_drvdata exynos7_ufs_phy;
 
 #endif /* _PHY_SAMSUNG_UFS_ */
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
