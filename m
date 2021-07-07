Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11F2C07E9E
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:58:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6DFEB61CB3
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:58:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6DFEB61CB3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvvpY82ZYi8fSJs6FJ6Wh8Y/pF1gbBYiEEBz4TrIYOQ=; b=OnmWOsPAqM6b7o
	YT1Q+o6jql0esRlIYzyb6oN+3TVwHMzR2OJi38DwXy9TRsPwUPsw1E39Lni3Irynw8toi9zOmFQg6
	T2qzeuBHEXr62E2X6yogu+kbiTnKIeatZdAEIBXF26xOLR56BvzkTJ5ewsiAJZlYQgrwF5Xiyd4aX
	aD6yM9/f62BgpejtbFhKOuK58/XiREAszxhY7b0bHm2V/2AcijzommYDXaYZfppKNZOWo71nQkAJW
	RmoaZOFOgrALsf2+km+tRjDgpK5JEgRFL+X9hHNWBgt/1OHAsYVvCWt9liT8pL8nQV3Jc5Jt7Wwxc
	bGDYmBmK/3hEjC32JTsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0vt6-00D7eB-WB; Wed, 07 Jul 2021 00:58:05 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0vt3-00D7cz-Iv
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 00:58:03 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20210707005758epoutp0277f5f4b2b82adff91d702376e06d3894~PXE12ijRj1596715967epoutp02X
 for <linux-phy@lists.infradead.org>; Wed,  7 Jul 2021 00:57:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20210707005758epoutp0277f5f4b2b82adff91d702376e06d3894~PXE12ijRj1596715967epoutp02X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625619478;
 bh=WotcmPq4Pl5jEFUReVrb7SouahMKF3a2DkhnyuVW+ck=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BnWP5WvQ8W+UH8SMigkPMWUkyEec/Twx6zyIkXXD7Rr7t+F4td5TDMwK/Z81LXlRG
 vHQJ0yyxxGbF56hilE/ZItXTH2bnD79uGP3cLCaW6FsfL3BRcnBqX/zWcQIwjk3yyW
 AYugvpd9lHL9+CznAa59OIpqBR7EHtM+9NAnrVIw=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20210707005757epcas2p13b5f6646050413dfedd1b4941ff09f72~PXE08Fm9X0255202552epcas2p13;
 Wed,  7 Jul 2021 00:57:57 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.190]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 4GKLcz28wCz4x9QH; Wed,  7 Jul
 2021 00:57:55 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 30.92.09571.31CF4E06; Wed,  7 Jul 2021 09:57:55 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20210707005754epcas2p10dcadaddfd9417c0a400eac7a99b4d62~PXEx4myC21574615746epcas2p1k;
 Wed,  7 Jul 2021 00:57:54 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20210707005754epsmtrp19fe8c2b8ff8635755418392910316f34~PXEx3w1-d2346023460epsmtrp1S;
 Wed,  7 Jul 2021 00:57:54 +0000 (GMT)
X-AuditID: b6c32a48-1f5ff70000002563-c2-60e4fc13c29b
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 24.AC.08394.11CF4E06; Wed,  7 Jul 2021 09:57:53 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20210707005753epsmtip2104ed6856c168a71f5a59d57118a26d4~PXExsSxsw3015130151epsmtip2E;
 Wed,  7 Jul 2021 00:57:53 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Jaehoon Chung
 <jh80.chung@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-phy@lists.infradead.org, Chanho Park <chanho61.park@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v4 1/2] phy: samsung-ufs: move phy-exynos7-ufs header
Date: Wed,  7 Jul 2021 09:57:52 +0900
Message-Id: <20210707005753.52042-2-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210707005753.52042-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCJsWRmVeSWpSXmKPExsWy7bCmha7wnycJBv0zWS0ezNvGZnF5v7bF
 jV9trBYXnvawWZw/v4HdYuPbH0wWE1Z9Y7FYe+Quu8XOOyeYHTg9ZjX0snlsWtXJ5rF5Sb1H
 35ZVjB7Hb2xnCmCNyrHJSE1MSS1SSM1Lzk/JzEu3VfIOjneONzUzMNQ1tLQwV1LIS8xNtVVy
 8QnQdcvMAbpHSaEsMacUKBSQWFyspG9nU5RfWpKqkJFfXGKrlFqQklNgaFigV5yYW1yal66X
 nJ9rZWhgYGQKVJmQk7Fu6XXGgk7JipaX65gbGBeLdjFyckgImEj0zLvO2MXIxSEksINRYueS
 B0wQzidGiZaNR6Ccb4wSdx9PYYFpmXx1HStEYi+jxL0Ly1kgnI+MEtdfb2QGqWIT0JXY8vwV
 I4gtIlAk8WntQyYQm1mglUniyM1wEFtYwFViy/r7QM0cHCwCqhJPbyeDhHkF7CTuty1nhVgm
 L3Fq2UEmkBJOAXuJz5PlIUoEJU7OfMICMVFeonnrbGaQEyQEfrJL/J7fzwxSLyHgIjFnjhbE
 GGGJV8e3sEPYUhIv+9vYIeq7GSVaH/2HSqxmlOhs9IGw7SV+Td/CCjKHWUBTYv0ufYiRyhJH
 bkGt5ZPoOPyXHSLMK9HRJgTRqC5xYPt0aEjJSnTP+Qz1iIfEsrW/oQE1iVGif99xxgmMCrOQ
 fDMLyTezEBYvYGRexSiWWlCcm55abFRgghy/mxjByVPLYwfj7Lcf9A4xMnEwHmKU4GBWEuGt
 83mSIMSbklhZlVqUH19UmpNafIjRFBjSE5mlRJPzgek7ryTe0NTIzMzA0tTC1MzIQkmcl4P9
 UIKQQHpiSWp2ampBahFMHxMHp1QDk4zJ7EDj6b0zXU+zLrOwO2Cq/2n7W1vrcMWEHIHClDv1
 gT17WmJDqu/qtBh/WLUm6OT8Vydbq/Z2zuP7/ncn10LvWRUndh43ul2WkOTKfTd5l71y/3Pn
 XUEV1jqrg5qX8u+P4um7MEn64Pf1LPKrz7Wdzrz6lenVu7f7IjYdry5g8pVYqLhFarZl/Ypj
 Una6VQ2GHy3uysr28mj2/s73W60TEvflV5qtwKvST6Y3lszodtO+y2633SYx4FTKrFdv5G9+
 mtzxOnG7WM+anYrrXepXnPiseFvV+Gm9dO3bQ3avwladurSl9++a3/bFB8puXgw+LCswM1Sw
 jmVD7+YVfeue5kZWsMtvfdHHfjaDUYmlOCPRUIu5qDgRACwEY8UnBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHLMWRmVeSWpSXmKPExsWy7bCSvK7gnycJBt+vmFs8mLeNzeLyfm2L
 G7/aWC0uPO1hszh/fgO7xca3P5gsJqz6xmKx9shddoudd04wO3B6zGroZfPYtKqTzWPzknqP
 vi2rGD2O39jOFMAaxWWTkpqTWZZapG+XwJWxbul1xoJOyYqWl+uYGxgXi3YxcnJICJhITL66
 jrWLkYtDSGA3o8Tq7/NZIRKyEs/e7WCHsIUl7rccAYsLCbxnlJjyORvEZhPQldjy/BUjiC0i
 UCJxffZfZpBBzAKdTBINN/4ygSSEBVwltqy/z9LFyMHBIqAq8fR2MkiYV8BO4n7bcqhd8hKn
 lh1kAinhFLCX+DxZHmKVncTmqTvZIcoFJU7OfMICYjMDlTdvnc08gVFgFpLULCSpBYxMqxgl
 UwuKc9Nziw0LDPNSy/WKE3OLS/PS9ZLzczcxgoNcS3MH4/ZVH/QOMTJxMB5ilOBgVhLhrfN5
 kiDEm5JYWZValB9fVJqTWnyIUZqDRUmc90LXyXghgfTEktTs1NSC1CKYLBMHp1QDE2Opu0oN
 g/Txzd+aKpyi4vzd2MuT9YyDfrM6Rhg2/I288eHLhmOLtbYeXbddbUX20Wm83pO+nxPc89HY
 y1PUlMnKb7fKVsaij5uWvXWKEjm04//bpC3P7DnP2wVb1uXbG7e3TA4PPl/Rl9CQ+LW5lCWi
 Ye4uxUXrJ1ywSHCws97vkpjG8HJ7Q1YN75O/5zyO9s2/Xmh55U40V3jQlv2rZpUeOCI5q/FF
 7fP3ly86Kt1R4vt1v/n0kd/8hxelNRpd7tl1v4xRrzxH1rZt2qzEm42alzRyGlWnPwgLL33G
 yjChvm97VkLgvMhfOZEGxX9XV4ekTLs4/37MjIlZlxzj1W6cFCz4dof3PHMKh323EktxRqKh
 FnNRcSIAM6K1HeECAAA=
X-CMS-MailID: 20210707005754epcas2p10dcadaddfd9417c0a400eac7a99b4d62
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210707005754epcas2p10dcadaddfd9417c0a400eac7a99b4d62
References: <20210707005753.52042-1-chanho61.park@samsung.com>
 <CGME20210707005754epcas2p10dcadaddfd9417c0a400eac7a99b4d62@epcas2p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_175802_121927_8B31886A 
X-CRM114-Status: GOOD (  16.29  )
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
 drivers/phy/samsung/Makefile                              | 3 ++-
 .../phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c}  | 8 ++------
 drivers/phy/samsung/phy-samsung-ufs.h                     | 5 ++++-
 3 files changed, 8 insertions(+), 8 deletions(-)
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
index 518923141958..7c9008e163db 100644
--- a/drivers/phy/samsung/phy-exynos7-ufs.h
+++ b/drivers/phy/samsung/phy-exynos7-ufs.c
@@ -1,11 +1,9 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * UFS PHY driver data for Samsung EXYNOS7 SoC
  *
  * Copyright (C) 2020 Samsung Electronics Co., Ltd.
  */
-#ifndef _PHY_EXYNOS7_UFS_H_
-#define _PHY_EXYNOS7_UFS_H_
 
 #include "phy-samsung-ufs.h"
 
@@ -68,7 +66,7 @@ static const struct samsung_ufs_phy_cfg *exynos7_ufs_phy_cfgs[CFG_TAG_MAX] = {
 	[CFG_POST_PWR_HS]	= exynos7_post_pwr_hs_cfg,
 };
 
-static struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
+const struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
 	.cfg = exynos7_ufs_phy_cfgs,
 	.isol = {
 		.offset = EXYNOS7_EMBEDDED_COMBO_PHY_CTRL,
@@ -77,5 +75,3 @@ static struct samsung_ufs_phy_drvdata exynos7_ufs_phy = {
 	},
 	.has_symbol_clk = 1,
 };
-
-#endif /* _PHY_EXYNOS7_UFS_H_ */
diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
index 5de78710524c..5ab6ca6fa187 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.h
+++ b/drivers/phy/samsung/phy-samsung-ufs.h
@@ -10,6 +10,9 @@
 #ifndef _PHY_SAMSUNG_UFS_
 #define _PHY_SAMSUNG_UFS_
 
+#include <linux/phy/phy.h>
+#include <linux/regmap.h>
+
 #define PHY_COMN_BLK	1
 #define PHY_TRSV_BLK	2
 #define END_UFS_PHY_CFG { 0 }
@@ -134,6 +137,6 @@ static inline void samsung_ufs_phy_ctrl_isol(
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
