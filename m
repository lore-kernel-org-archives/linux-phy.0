Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F59CC07E9B
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:06:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DE7BE6197F
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:06:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DE7BE6197F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hs0ihAwuXW8DWl0YlMVqRxwnnPvNg5fHW6zQIlCvWXc=; b=OBKCwFChwGrdKy
	iq4QMdhVw+xYlcbVc6XYZElOXaWPjucSqJnB0bryDhgC1b90YbCqpiw9nHz59WJ9hOKXVlBqZBji5
	KqoFBwVfveVI0SdZCTY57t8z7yXKj9x0/87tDiU047Vn5aJz1cQwUwiK/X4qn/eZWCMnIv8Sf4pYM
	WjOUSDByLzdTcF864TK0XGvmBNQDty8EA/hR1bimdLjwFxAammghtrZZ3IdknPJEk5nH4qbliPWIR
	OrWQFMWRUn3Ig2j26oo8cpi/0SehLP9vEjFxT632QPSZHbXpKp0WFjuQpxZ23fGdoo3+wucBlHvee
	Q0088D4E1qN6wlU07ETQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0aTd-00A8yL-Ck; Tue, 06 Jul 2021 02:06:21 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0aTZ-00A8xQ-Ni
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 02:06:19 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20210706020614epoutp013391935a436b3f71fe689601a951d849~PEXKptyXd2750727507epoutp01A
 for <linux-phy@lists.infradead.org>; Tue,  6 Jul 2021 02:06:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20210706020614epoutp013391935a436b3f71fe689601a951d849~PEXKptyXd2750727507epoutp01A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625537174;
 bh=x1cHT5e+qaBkrjboS8zXTnX+wT56+PLSAVzLG887AaA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k1YtuKiJQQFZPS5SCfhvoLy3b9J05ymteaAAW0L/MeHsZKAE3ZRpzdP6J+HHf0px+
 rjIt17jiHZwMabEBafdEWo3IzdKQGAyAFuQHoWkURvGxRAJpkG5LqqlzdJcXIqo7cV
 NGmNqLhU9PEjT5ZM3jvqYKhqg4ZnELA7K3D2X5DU=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20210706020613epcas2p4ace90130f530a393a5370221389548ca~PEXJuwFRQ0922209222epcas2p4p;
 Tue,  6 Jul 2021 02:06:13 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.191]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 4GJmBC3bv6z4x9Q5; Tue,  6 Jul
 2021 02:06:11 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 6C.9F.09541.29AB3E06; Tue,  6 Jul 2021 11:06:10 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
 20210706020609epcas2p3af9ad22d849366dd850214b5c2e9f9dd~PEXF8_83S2080620806epcas2p3m;
 Tue,  6 Jul 2021 02:06:09 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20210706020609epsmtrp270d7aad558f3b9ee12fc65b98af14982~PEXF8MGV70745307453epsmtrp28;
 Tue,  6 Jul 2021 02:06:09 +0000 (GMT)
X-AuditID: b6c32a46-0abff70000002545-8f-60e3ba92968b
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 20.65.08394.19AB3E06; Tue,  6 Jul 2021 11:06:09 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20210706020609epsmtip2c0ee6e05cea3aad8881c87f344606adb~PEXFtZLvb2882128821epsmtip2D;
 Tue,  6 Jul 2021 02:06:09 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, Jaehoon Chung
 <jh80.chung@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 linux-phy@lists.infradead.org, Chanho Park <chanho61.park@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH v2 1/2] phy: samsung-ufs: move phy-exynos7-ufs header
Date: Tue,  6 Jul 2021 11:06:24 +0900
Message-Id: <20210706020625.117400-2-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210706020625.117400-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGJsWRmVeSWpSXmKPExsWy7bCmme6kXY8TDDY+07R4MG8bm8Xl/doW
 N361sVpceNrDZnH+/AZ2i41vfzBZTFj1jcVi7ZG77BY775xgduD0mNXQy+axaVUnm8fmJfUe
 fVtWMXocv7GdKYA1KscmIzUxJbVIITUvOT8lMy/dVsk7ON453tTMwFDX0NLCXEkhLzE31VbJ
 xSdA1y0zB+geJYWyxJxSoFBAYnGxkr6dTVF+aUmqQkZ+cYmtUmpBSk6BoWGBXnFibnFpXrpe
 cn6ulaGBgZEpUGVCTsa/wzsYC65KVjy6v4+1gfGtaBcjJ4eEgInEunOzWbsYuTiEBHYwShzY
 c5cNJCEk8IlRonmXJkTiG6PE865d7DAdL/b8ZYFI7GWU2D3xCROE85FRYu26CawgVWwCuhJb
 nr9iBLFFBIokPq19yARiMwu0MkkcuRkOYgsLuErcauwEW8cioCrxbOJWsBpeAXuJBXt2skFs
 k5c4tewgWJxTwEHiUcNUVogaQYmTM5+wQMyUl2jeOpsZ5AgJga/sEld6lrJCNLtIfLnaBHW2
 sMSr41ugbCmJz+/2skE0dDNKtD76D5VYzSjR2egDYdtL/Jq+BWgQB9AGTYn1u/RBTAkBZYkj
 t6D28kl0HP7LDhHmlehoE4JoVJc4sH06C4QtK9E95zPUNR4S8xccggbcZEaJk79Os01gVJiF
 5J1ZSN6ZhbB4ASPzKkax1ILi3PTUYqMCI+QY3sQITqBabjsYp7z9oHeIkYmD8RCjBAezkgiv
 yJRHCUK8KYmVValF+fFFpTmpxYcYTYGBPZFZSjQ5H5jC80riDU2NzMwMLE0tTM2MLJTEeTnY
 DyUICaQnlqRmp6YWpBbB9DFxcEo1MEWfyzOLbFQ99FhRmN/P7o+ujvKBWrloj1ktuU+2lBmb
 2O/vd9i1a16N8WPnb+WWK+5due43L+PH89zQE/wRvp/0jbmMuJTut57nlTi5/dzWgI23fkgF
 WZ/eHOMSxdi71jvil6GLjs9vr+lLDq+zVtD+s1zUd8LXS4ecdik+eRM/ffaSJPUNzv4pe148
 tu04FbhEt9398WnNO6+s/4brVqTyPG6+eLvvmZj0xytFJVEvHeLNk7/d28BySM7xxCtT9tb/
 j90CJgfaZ6r+WnfcPvTYzpQ5JWpKHGvTKzzNpb6/355peUjxl7LthP/zTis5VBonVCyM2uJ3
 urRumlnAxf2LLFc80PhecOWc7b1PVkosxRmJhlrMRcWJAGgS3qApBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrALMWRmVeSWpSXmKPExsWy7bCSvO7EXY8TDL5clLR4MG8bm8Xl/doW
 N361sVpceNrDZnH+/AZ2i41vfzBZTFj1jcVi7ZG77BY775xgduD0mNXQy+axaVUnm8fmJfUe
 fVtWMXocv7GdKYA1issmJTUnsyy1SN8ugSvj3+EdjAVXJSse3d/H2sD4VrSLkZNDQsBE4sWe
 vywgtpDAbkaJLws1IeKyEs/e7WCHsIUl7rccYe1i5AKqec8oMetcNzNIgk1AV2LL81eMILaI
 QInE9dl/mUGKmAU6mSQabvxlAkkIC7hK3GrsZAOxWQRUJZ5N3AoW5xWwl1iwZycbxAZ5iVPL
 DoLFOQUcJB41TGWFuMheonv1fnaIekGJkzOfgF3KDFTfvHU28wRGgVlIUrOQpBYwMq1ilEwt
 KM5Nzy02LDDMSy3XK07MLS7NS9dLzs/dxAgOdC3NHYzbV33QO8TIxMF4iFGCg1lJhFdkyqME
 Id6UxMqq1KL8+KLSnNTiQ4zSHCxK4rwXuk7GCwmkJ5akZqemFqQWwWSZODilGpj01Fvslvh1
 5P8wcJ2qd30i+/woK0+7b4x20jkvq6x8ArfX5Gy+yrQy83lzu5+cgOWbD6s/T45YO+lw08G4
 tL9+qnWzXz326At+JmmlK69UzNhSfdK0cOXGzFTj8vknX4uK2dzsENY7p+X8tMBYPy80kv1n
 ysmyIHnzVRfEdr8o0Fr+N5NfaNYfdSeDs+bzXt366uqc9SQzPUn3WfrM15LvTtwQk/h78u7d
 66Y8CVerze02zBFRqQ+PWDlvw2WzX0kXqmsFNj+8e23BMhMWxjeynHJWjmqffqYWy/3nfmzq
 FKg5b9UmtevXmGIYpPhP2EfsXTfTMMyz7c7Pm+rB+zYvUM+yFLvt7t5gdjptghJLcUaioRZz
 UXEiACL8XQjjAgAA
X-CMS-MailID: 20210706020609epcas2p3af9ad22d849366dd850214b5c2e9f9dd
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210706020609epcas2p3af9ad22d849366dd850214b5c2e9f9dd
References: <20210706020625.117400-1-chanho61.park@samsung.com>
 <CGME20210706020609epcas2p3af9ad22d849366dd850214b5c2e9f9dd@epcas2p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_190618_139529_EAC1841C 
X-CRM114-Status: GOOD (  18.51  )
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

Change-Id: Iddd3662445fe5373c254f994045b451b443fb91c
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
