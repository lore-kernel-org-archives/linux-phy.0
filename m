Return-Path: <SRS0=210v=MB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23C43C07E9B
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 10:00:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA0F7613D9
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jul 2021 10:00:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DA0F7613D9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9rTtirxh2oGWriY44iTrw2jKQ5GXEDYYHovbXjQYBbw=; b=XvIrQanHvJbXYA
	mYhy1pYCWGGhmS9tQJyzbYNyJPWfrQcP4f+0Dl4WDZAb2linIXuGF8s9JV8wsILizi42RFlGSHZa9
	cvg30bmZpZcB52TSPON1umy5cwxDF5q38+CdiPAnuG+9G5A9hhbfCvhIOI5P7A7waXPX8dfOzkdik
	mvyAytLmeMgObRsB1Xr7tTijTvl2+fWlmZhIMzYXF1kPa/D3LhsKiswM+7ggrzWPO8mHIXz1F5swW
	67fDz3Pgc7My89UKW7eBFuXgtCBvULhOKBFb5yMIT7MP77N6qVcFZ7Fm8QXSlalJRZfd1Izl96Vwn
	xswO43bCzBBSAphv2lDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1nJR-001QxF-8V; Fri, 09 Jul 2021 10:00:49 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1nJM-001Quc-TR
 for linux-phy@lists.infradead.org; Fri, 09 Jul 2021 10:00:48 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20210709100041epoutp038b31c1fe706acaf76d4fbbccae39cb55~QFxQ6sppy0952409524epoutp03x
 for <linux-phy@lists.infradead.org>; Fri,  9 Jul 2021 10:00:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20210709100041epoutp038b31c1fe706acaf76d4fbbccae39cb55~QFxQ6sppy0952409524epoutp03x
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625824841;
 bh=0o7Uc3pLfYu0r+e4w/Xmc8Py7OupBm8Ro/5JdJSewC0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GhAzlt9TpCnhHJ4k4kKMCZ9cGODmdhWZ9XO5acpEOfWc4L9iI1tOENl9ZMVMwz6GM
 j7A6wcWkslpZizZ49zldRYbGH4vAXkGu+98tJ/QhuMYUe7O0yiq0Q9/jy3Vd9dNT4D
 kIoJhSjdWHJEjM3tEarjBMOZckiBGZjLKyjFLGXg=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20210709100040epcas2p219965e929c2f9e65270cce94fe4dde2c~QFxQXw24u1420014200epcas2p28;
 Fri,  9 Jul 2021 10:00:40 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.187]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 4GLpZG4KQSz4x9Q7; Fri,  9 Jul
 2021 10:00:38 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 AB.0B.09541.64E18E06; Fri,  9 Jul 2021 19:00:38 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20210709100037epcas2p2be75773648d859ec29d96a901b6d9a5c~QFxN-WSCg1420014200epcas2p23;
 Fri,  9 Jul 2021 10:00:37 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20210709100037epsmtrp26a99715d2b43a4cca7e24f3a3564447b~QFxN_hs3p2381623816epsmtrp2K;
 Fri,  9 Jul 2021 10:00:37 +0000 (GMT)
X-AuditID: b6c32a46-095ff70000002545-7f-60e81e469216
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E6.16.08394.54E18E06; Fri,  9 Jul 2021 19:00:37 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20210709100037epsmtip1eae164c500e059c615d2ae35aaf054ac~QFxNxFVlz1194811948epsmtip1k;
 Fri,  9 Jul 2021 10:00:37 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Jaehoon Chung
 <jh80.chung@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-phy@lists.infradead.org, Chanho Park <chanho61.park@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v5 1/2] phy: samsung-ufs: move phy-exynos7-ufs header
Date: Fri,  9 Jul 2021 18:45:23 +0900
Message-Id: <20210709094524.110193-2-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210709094524.110193-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCJsWRmVeSWpSXmKPExsWy7bCmma6b3IsEg1sPpC0ezNvGZnF5v7bF
 jV9trBYXnvawWZw/v4HdYuPbH0wWE1Z9Y7FYe+Quu8XOOyeYHTg9ZjX0snlsWtXJ5rF5Sb1H
 35ZVjB7Hb2xnCmCNyrHJSE1MSS1SSM1Lzk/JzEu3VfIOjneONzUzMNQ1tLQwV1LIS8xNtVVy
 8QnQdcvMAbpHSaEsMacUKBSQWFyspG9nU5RfWpKqkJFfXGKrlFqQklNgaFigV5yYW1yal66X
 nJ9rZWhgYGQKVJmQk3H+HXfBIcmKxwsmsDYw3hDtYuTkkBAwkfj96x1bFyMXh5DADkaJp4uP
 sUI4nxglbt75BeV8Y5SYuHoDO0zLmT+/2SESexkl3ky4ClX1Eajl812wKjYBXYktz18xgtgi
 AkUSn9Y+ZAKxmQVamSSO3AzvYuTgEBZwlXjzqAIkzCKgKvF38RIWEJtXwF5i85tdLBDL5CVO
 LTsI1sop4CDxd+MMRogaQYmTM5+wQIyUl2jeOpsZ5AYJgZ/sEidWNDKDzJcQcJFYvNYFYo6w
 xKvjW6AekJL4/G4vG0R9N6NE66P/UInVjBKdjT4Qtr3Er+lbWEHmMAtoSqzfpQ8xUlniyC2o
 tXwSHYf/skOEeSU62oQgGtUlDmyfDnW9rET3nM+sELaHxP3Ta6AhPZlRYuOt84wTGBVmIflm
 FpJvZiEsXsDIvIpRLLWgODc9tdiowAg5fjcxgpOnltsOxilvP+gdYmTiYDzEKMHBrCTCazTj
 WYIQb0piZVVqUX58UWlOavEhRlNgWE9klhJNzgem77ySeENTIzMzA0tTC1MzIwslcV4O9kMJ
 QgLpiSWp2ampBalFMH1MHJxSDUy6D/Qr7u254j9RKEfWziU8dsatL5/7Nu2Z5tUrYcDrcmz9
 wuSpP/8/OJM8W/9ijmptussf/u/drILOVvM+deg8OqO1KWC69m3Neb5MmeUMvSf0FzgW/Zvt
 tHbrk6xnOvvsevJ4ilgNUxVPnpz07+Tzb7qZHSLSeuoZjIXXmb+K7db4tDJ9al5gUOqi8LaP
 CZq3dCtfPbt79+nJOsecE4/2a0/pOfXHnGvWurBbXw01Hko/lv4oLCCXbT3xpwCD0OIVf5ec
 W2W8w5Ch643o65LdOw1PMgX8Zd+14rVO0dOMd33b5Q2dXgSG7emJYks6kdLwoD5R38NFqGra
 LyHm4H9qf0PyLybylfq81zjzJkGJpTgj0VCLuag4EQBxpGW/JwQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHLMWRmVeSWpSXmKPExsWy7bCSnK6r3IsEg9OzTCwezNvGZnF5v7bF
 jV9trBYXnvawWZw/v4HdYuPbH0wWE1Z9Y7FYe+Quu8XOOyeYHTg9ZjX0snlsWtXJ5rF5Sb1H
 35ZVjB7Hb2xnCmCN4rJJSc3JLEst0rdL4Mo4/4674JBkxeMFE1gbGG+IdjFyckgImEic+fOb
 vYuRi0NIYDejRM/Ma2wQCVmJZ+92sEPYwhL3W46wgthCAu8ZJdZtrQCx2QR0JbY8f8UIYosI
 lEhcn/2XGWQQs0Ank0TDjb9MXYwcHMICrhJvHoHVswioSvxdvIQFxOYVsJfY/GYXC8R8eYlT
 yw4ygdicAg4SfzfOYITYZS/xvWUlI0S9oMTJmU/A6pmB6pu3zmaewCgwC0lqFpLUAkamVYyS
 qQXFuem5xYYFhnmp5XrFibnFpXnpesn5uZsYwUGupbmDcfuqD3qHGJk4GA8xSnAwK4nwGs14
 liDEm5JYWZValB9fVJqTWnyIUZqDRUmc90LXyXghgfTEktTs1NSC1CKYLBMHp1QD0/pP4ZcF
 +5eVhysVKwo8fP3i3kKXG9rnHSef/7JSx/uW85p+Bvs9wh7Gzj9c92saF4r324ZJuLpvDXPU
 m+/gPWvHmZ939xi/kO1xK7OKVVswS/vZmlNh9elXd7/if2eb6FDp7dykzhe0wOZRypMLPRw8
 SntaJWaX/f7tLPnCffbDk8854oMuMHUwyBS1lscuFVUO6G/ZGfTX6q/qxdbmI37BU5ZmTL3k
 4mdl/5KBa4Ojywvh6bL7tvkH3tu7aUrqshK9c99tOkt2sh66fO9Cgc41J4Xlxy7/eNx7RsDh
 uc1iiUv7ltQuKlaT8voecndCw4GqrYv6wtyenmrLPq4hELo2eqJVncu/259fsbDvVWIpzkg0
 1GIuKk4EAM4x5RrhAgAA
X-CMS-MailID: 20210709100037epcas2p2be75773648d859ec29d96a901b6d9a5c
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210709100037epcas2p2be75773648d859ec29d96a901b6d9a5c
References: <20210709094524.110193-1-chanho61.park@samsung.com>
 <CGME20210709100037epcas2p2be75773648d859ec29d96a901b6d9a5c@epcas2p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210709_030045_347265_D2689819 
X-CRM114-Status: GOOD (  15.29  )
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
 drivers/phy/samsung/Makefile                              | 4 +++-
 .../phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c}  | 8 ++------
 drivers/phy/samsung/phy-samsung-ufs.h                     | 5 ++++-
 3 files changed, 9 insertions(+), 8 deletions(-)
 rename drivers/phy/samsung/{phy-exynos7-ufs.h => phy-exynos7-ufs.c} (93%)

diff --git a/drivers/phy/samsung/Makefile b/drivers/phy/samsung/Makefile
index 3959100fe8a2..68518ae30c1b 100644
--- a/drivers/phy/samsung/Makefile
+++ b/drivers/phy/samsung/Makefile
@@ -2,7 +2,9 @@
 obj-$(CONFIG_PHY_EXYNOS_DP_VIDEO)	+= phy-exynos-dp-video.o
 obj-$(CONFIG_PHY_EXYNOS_MIPI_VIDEO)	+= phy-exynos-mipi-video.o
 obj-$(CONFIG_PHY_EXYNOS_PCIE)		+= phy-exynos-pcie.o
-obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-samsung-ufs.o
+obj-$(CONFIG_PHY_SAMSUNG_UFS)		+= phy-exynos-ufs.o
+phy-exynos-ufs-y			+= phy-samsung-ufs.o
+phy-exynos-ufs-y			+= phy-exynos7-ufs.o
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
