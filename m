Return-Path: <SRS0=p6g3=L5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 882EFC07E99
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 10:24:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 48F2A60724
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 10:24:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 48F2A60724
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYHn/w4NNDUhMkG1TiW6gY/dNeKk4VkYMuj7muHGgV0=; b=HCGLQFo5haJWZc
	tT8oJTXEbgzyu1W1V2YIqoP3d9jtlYKHrY7zSa4FK68MaYC0RqOT7pfNGu3QbMuYczYAKaC3di+vT
	uFenCw5ARK0qLb4xYVIHknYJFMYGS4xhJzdQD2vMYMJSlWV00aDfHxqCnJHYLrU+6LGilw8zb5ubS
	984G75S5MHYoeuPLuYP3bB3zXgG+lEHWlFu1zPvSJAEQAs+H0cU1XMKpum6hkF6SGdRVGuph/yw4L
	kr1hVoODLRvs5vy0sezA4A9LblwrN3To2ZgtJ4EZl23xbsWkH38TCdnh0nJU+oDutEmCrqi48gxmS
	S6y1XvNd5DL2GGBHFjQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0Lm3-008Zqz-Ju; Mon, 05 Jul 2021 10:24:23 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0Lm0-008Zq4-4o
 for linux-phy@lists.infradead.org; Mon, 05 Jul 2021 10:24:22 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20210705102418epoutp04c5ec5368902af41bca519fc7cbe74ea4~O3gvcenmh2843028430epoutp04d
 for <linux-phy@lists.infradead.org>; Mon,  5 Jul 2021 10:24:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20210705102418epoutp04c5ec5368902af41bca519fc7cbe74ea4~O3gvcenmh2843028430epoutp04d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625480658;
 bh=MdN2Qa8Mrlval4Gqzqo6GzC3eGBXv+TypGK0vF+z6J8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kcDk+gmwm8Hhn9ucfJ0nBIT4AHsJ4cuRMXIdXhQm/l6e1WjKtxQQG5S/0vQiGLtlX
 pd+Rcle+oya5eAfA8boz+3VrImWI7thdMCWyXqK3DjFSDDKnvLGJ81hPQU+EDJh5kG
 zFm1wYcC+m5cRD4sbo4MakBjP2VgzGAlzj/s0uVg=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20210705102416epcas2p407077755e9fff34fa1bc06f25daae686~O3gudTD9A0326503265epcas2p4Y;
 Mon,  5 Jul 2021 10:24:16 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.40.188]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 4GJMHL62LMz4x9Pw; Mon,  5 Jul
 2021 10:24:14 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 BC.C7.09921.ECDD2E06; Mon,  5 Jul 2021 19:24:14 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
 20210705102414epcas2p4bfdfa979f08221c6834d64a2faa20b6a~O3gruQL-R0326503265epcas2p4W;
 Mon,  5 Jul 2021 10:24:14 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20210705102414epsmtrp1fde46207c06e25a5e9a268d84a9c9955~O3grtP2fz1411514115epsmtrp1L;
 Mon,  5 Jul 2021 10:24:14 +0000 (GMT)
X-AuditID: b6c32a45-fb3ff700000026c1-3f-60e2ddcebbf2
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 52.3F.08394.DCDD2E06; Mon,  5 Jul 2021 19:24:13 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20210705102413epsmtip16d6a61dac4cb7999a6578fe3a4bf0706~O3griuCCC2530825308epsmtip1k;
 Mon,  5 Jul 2021 10:24:13 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Jaehoon Chung <jh80.chung@samsung.com>, Alim
 Akhtar <alim.akhtar@samsung.com>, linux-phy@lists.infradead.org, Chanho Park
 <chanho61.park@samsung.com>
Subject: [PATCH 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
Date: Mon,  5 Jul 2021 19:23:18 +0900
Message-Id: <20210705102318.102999-3-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210705102318.102999-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupmk+LIzCtJLcpLzFFi42LZdljTQvfc3UcJBpfma1s8mLeNzeLyfm2L
 G7/aWC0uPO1hszh/fgO7xYRV31gs1h65y26x884JZgcOj02rOtk8Ni+p9+jbsorR4/iN7UwB
 LFE5NhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAVygp
 lCXmlAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCgwNC/SKE3OLS/PS9ZLzc60MDQyMTIEq
 E3Iyuo4+YC54qlKxc+47lgbGW/JdjJwcEgImEme+7mfpYuTiEBLYwSjRePgZI4TziVHi+abv
 UM43RomvT28ww7QcWzKNHSKxl1Hi5P3ZzBDOR0aJPevOMIJUsQnoSmx5/grI5uAQEfCUWLkC
 bBKzwGdGieubFoNNEhbwkLjxrxOsnkVAVWLbhYNg9bwC9hL/fpVALJOXOLXsIBOIzSngIHFz
 61F2EJtXQFDi5MwnLCA2M1BN81aIGyQE3rJL3Nj8ngWi2UXi8Mp7TBC2sMSr41vYIWwpiZf9
 bewQDd2MEq2P/kMlVjNKdDb6QNj2Er+mb2EFOYhZQFNi/S59EFNCQFniyC2ovXwSHYf/skOE
 eSU62oQgGtUlDmyfDnWBrET3nM+sELaHxJ/vPWC2kMBkRonfs/0mMCrMQvLNLCTfzELYu4CR
 eRWjWGpBcW56arFRgSFyBG9iBKdKLdcdjJPfftA7xMjEwXiIUYKDWUmEV2TKowQh3pTEyqrU
 ovz4otKc1OJDjKbAoJ7ILCWanA9M1nkl8YamRmZmBpamFqZmRhZK4rwc7IcShATSE0tSs1NT
 C1KLYPqYODilGpjM35iWOX7X1W6Y2KqfsGTN2h19108JKSuGNWSmm2sVM3vLZVrwP4tdwOD6
 xe7KdI76vZMPV0g9eMH2/pSut8WPMw4TVyZeXNHas+/XksTKzKZNibU1DT4ay3W6NrjtbM7R
 lLj6TqGTdTLjrHmLeDnKO176nDHk2pPrmcz7ln/e7rL8Cf/+ZKutVjVNv7mAu+tJhIyU+VPx
 DTkPbePYlLxU/StV1OZHHPIuSpRf0RM//86k3L8Pz/yXWrlA7e79u9azO2JmnVlVVvI45tAF
 qSuajdunSYVsSfm/R7f58d18wSunXrxo+abk+Hz9FxbFb+V7OgoOH5vqyOK29jJzhNEOe6/y
 r9s+ffcTj/rStVeJpTgj0VCLuag4EQDMM+f7HgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKLMWRmVeSWpSXmKPExsWy7bCSnO7Zu48SDOa8NLN4MG8bm8Xl/doW
 N361sVpceNrDZnH+/AZ2iwmrvrFYrD1yl91i550TzA4cHptWdbJ5bF5S79G3ZRWjx/Eb25kC
 WKK4bFJSczLLUov07RK4MrqOPmAueKpSsXPuO5YGxlvyXYycHBICJhLHlkxj72Lk4hAS2M0o
 0XT9CytEQlbi2bsd7BC2sMT9liOsEEXvGSXeHj7JDJJgE9CV2PL8FWMXIweHiIC3xJmrsiA1
 zALfGSW23O1iAqkRFvCQuPGvkxHEZhFQldh24SBYPa+AvcS/XyUQ8+UlTi07CFbOKeAgcXPr
 UbC9QkAlG3tOsYDYvAKCEidnPgGzmYHqm7fOZp7AKDALSWoWktQCRqZVjJKpBcW56bnFhgWG
 eanlesWJucWleel6yfm5mxjBIa2luYNx+6oPeocYmTgYDzFKcDArifCKTHmUIMSbklhZlVqU
 H19UmpNafIhRmoNFSZz3QtfJeCGB9MSS1OzU1ILUIpgsEwenVAPT/lJTg/Pes9ce0w96t8Cv
 lKtWZcrTlxOv1H89d/Fj5VEl71fHGRTttP42P76ousr4SLTg83A1444c5wVrhJeGJkjwrGVZ
 KXv61sllMy732RYLaE+wMHq4KGkad4XugikzWiOKmouq5ryQOhYWP7nDePavhjlJC45+fhX0
 YkXRn59T38d/frufy7O10n3jeoa7nvtOv1/Au7X4Elsyb1XQxSKeE2eT72ucva+u5HBgshy7
 Ud/kLEE/300dEdP35Hi+XdMrahAovjeL4+SHVfYGjRt32YXy9lYYvy+MVRJd/prb1SRdMIPp
 +Zd566dmSZ+93G+n52D3N+ZZ3Q3mSU0vXb5lnT8trSdtlaL77vEqJZbijERDLeai4kQAbUTf
 5dgCAAA=
X-CMS-MailID: 20210705102414epcas2p4bfdfa979f08221c6834d64a2faa20b6a
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210705102414epcas2p4bfdfa979f08221c6834d64a2faa20b6a
References: <20210705102318.102999-1-chanho61.park@samsung.com>
 <CGME20210705102414epcas2p4bfdfa979f08221c6834d64a2faa20b6a@epcas2p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_032420_585765_2F882A21 
X-CRM114-Status: GOOD (  21.21  )
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

This patch adds to support phy-exynosauto-ufs driver for ExynosAuto v9
series SoCs. The patch adds "samsung,exynosauto-ufs-phy" compatible.
Unlike previous exynos ufs phy, the chip uses 0x50 offset as
PHY_TRSV_REG_CFG_OFFSET.

Change-Id: I4ea333d4565af537c26a8876d1b27144eea3c3c6
Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 .../bindings/phy/samsung,ufs-phy.yaml         |  1 +
 drivers/phy/samsung/phy-exynosauto-ufs.h      | 70 +++++++++++++++++++
 drivers/phy/samsung/phy-samsung-ufs.c         |  3 +
 drivers/phy/samsung/phy-samsung-ufs.h         |  1 +
 4 files changed, 75 insertions(+)
 create mode 100644 drivers/phy/samsung/phy-exynosauto-ufs.h

diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
index 636cc501b54f..8e13f8cec6a7 100644
--- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - samsung,exynos7-ufs-phy
+      - samsung,exynosauto-ufs-phy
 
   reg:
     maxItems: 1
diff --git a/drivers/phy/samsung/phy-exynosauto-ufs.h b/drivers/phy/samsung/phy-exynosauto-ufs.h
new file mode 100644
index 000000000000..3e7d7bb7f0e6
--- /dev/null
+++ b/drivers/phy/samsung/phy-exynosauto-ufs.h
@@ -0,0 +1,70 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * UFS PHY driver data for Samsung EXYNOSAUTO SoC
+ *
+ * Copyright (C) 2021 Samsung Electronics Co., Ltd.
+ */
+#ifndef _PHY_EXYNOSAUTO_UFS_H_
+#define _PHY_EXYNOSAUTO_UFS_H_
+
+#include "phy-samsung-ufs.h"
+
+#define EXYNOSAUTO_EMBEDDED_COMBO_PHY_CTRL	0x728
+#define EXYNOSAUTO_EMBEDDED_COMBO_PHY_CTRL_MASK	0x1
+#define EXYNOSAUTO_EMBEDDED_COMBO_PHY_CTRL_EN	BIT(0)
+
+#define PHY_TRSV_REG_CFG_AUTO(o, v, d)	PHY_TRSV_REG_CFG_OFFSET(o, v, d, 0x50)
+
+/* Calibration for phy initialization */
+static const struct samsung_ufs_phy_cfg exynosauto_pre_init_cfg[] = {
+	PHY_COMN_REG_CFG(0x023, 0x80, PWR_MODE_ANY),
+	PHY_COMN_REG_CFG(0x01d, 0x10, PWR_MODE_ANY),
+
+	PHY_TRSV_REG_CFG_AUTO(0x044, 0xb5, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTO(0x04d, 0x43, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTO(0x05b, 0x20, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTO(0x05e, 0xc0, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTO(0x038, 0x12, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTO(0x059, 0x58, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTO(0x06c, 0x18, PWR_MODE_ANY),
+	PHY_TRSV_REG_CFG_AUTO(0x06d, 0x02, PWR_MODE_ANY),
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
+static const struct samsung_ufs_phy_cfg exynosauto_pre_pwr_hs_cfg[] = {
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
+static const struct samsung_ufs_phy_cfg *exynosauto_ufs_phy_cfgs[CFG_TAG_MAX] = {
+	[CFG_PRE_INIT]		= exynosauto_pre_init_cfg,
+	[CFG_PRE_PWR_HS]	= exynosauto_pre_pwr_hs_cfg,
+};
+
+static struct samsung_ufs_phy_drvdata exynosauto_ufs_phy = {
+	.cfg = exynosauto_ufs_phy_cfgs,
+	.isol = {
+		.offset = EXYNOSAUTO_EMBEDDED_COMBO_PHY_CTRL,
+		.mask = EXYNOSAUTO_EMBEDDED_COMBO_PHY_CTRL_MASK,
+		.en = EXYNOSAUTO_EMBEDDED_COMBO_PHY_CTRL_EN,
+	},
+	.has_symbol_clk = 0,
+};
+
+#endif /* _PHY_EXYNOSAUTO_UFS_H_ */
diff --git a/drivers/phy/samsung/phy-samsung-ufs.c b/drivers/phy/samsung/phy-samsung-ufs.c
index dd9ab1519d83..ae58db9228b8 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.c
+++ b/drivers/phy/samsung/phy-samsung-ufs.c
@@ -347,6 +347,9 @@ static const struct of_device_id samsung_ufs_phy_match[] = {
 	{
 		.compatible = "samsung,exynos7-ufs-phy",
 		.data = &exynos7_ufs_phy,
+	}, {
+		.compatible = "samsung,exynosauto-ufs-phy",
+		.data = &exynosauto_ufs_phy,
 	},
 	{},
 };
diff --git a/drivers/phy/samsung/phy-samsung-ufs.h b/drivers/phy/samsung/phy-samsung-ufs.h
index ea1ac38889c1..357876f541b0 100644
--- a/drivers/phy/samsung/phy-samsung-ufs.h
+++ b/drivers/phy/samsung/phy-samsung-ufs.h
@@ -138,5 +138,6 @@ static inline void samsung_ufs_phy_ctrl_isol(
 }
 
 #include "phy-exynos7-ufs.h"
+#include "phy-exynosauto-ufs.h"
 
 #endif /* _PHY_SAMSUNG_UFS_ */
-- 
2.32.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
