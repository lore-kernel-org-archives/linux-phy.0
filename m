Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10FDBD374A1
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 14:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a7y9um67yFnOqI7DbpiqGBL1zC+MbYsVx+uhgHxi4rA=; b=kj13sGtck6h1hx
	1a7iNADXGZwnv0RLqXux3aZZk6Dbd19QRU0K+mOXCaXlz5KBC7u2cGZ7czZYadrKljZtKWfn2RQNC
	ry4bAYri7ZFVl9d9BOQcab7bs8faOrJV1IQNimEiqtDjNxTvGq5R8Sbc9Wz9OBvpg0s/7a0fxpTRu
	hv6ZDHEnrp+lvMTXVk0kAfZn0u4WTllWrNxnFEZeWir0Bj0MJQs7+AfXkb/zlouiDTYvPVTK88T1w
	b5WyUOuWfOtQeGT4xE8uyqC+F2VFMn5Wef7dAsLDIxUeRb/qUbN9ew/he1l4HzaiEygwAT1cZ2PQn
	iZ8j6loVpIRVV4mIbwPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1RWj-0000000F7J5-3HoR;
	Thu, 17 Oct 2024 14:30:57 +0000
Received: from rcdn-iport-5.cisco.com ([173.37.86.76])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1RWd-0000000F7I6-2bJR
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 14:30:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=cisco.com; i=@cisco.com; l=2102; q=dns/txt; s=iport;
  t=1729175451; x=1730385051;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=NNevI5c7bUcc5if4XkYhDFr7yVELYRPdbyKO8NXMmWo=;
  b=Pmq/A5Qn2dlkecMkCpKKNEv/ZeuKlSyVOPu0gQadpGpvBnHEz+AUQTLl
   YyWNNv5IvMQd77s7Aie4YPoZlZ8K5zYibhoUOwHQMWcd6WMbW1PcVkj5P
   21bCEtz+oXyrNvwkbWrNOhlTkhRaF/lJs1x4a81JUOeqvOrTGY0b1Hu7h
   o=;
X-CSE-ConnectionGUID: M6RYoCbtSUyOr8sU9hOJYA==
X-CSE-MsgGUID: tCCoSDg2QIq+os5+rX8iiw==
X-IPAS-Result: =?us-ascii?q?A0AqAAAjHxFn/4v/Ja1aHAEBAQEBAQcBARIBAQQEAQGBe?=
 =?us-ascii?q?wcBAQsBgkqBT0NIjHKVRpIigSUDVg8BAQEPRAQBAYUHiiQCJjQJDgECBAEBA?=
 =?us-ascii?q?QEDAgMBAQEBAQEBAQENAQEFAQEBAgEHBYEOE4YIhl0rCwFGKWMxARKDAYJlA?=
 =?us-ascii?q?65QgXkzgQHeM4FsGIEwAY1FhWcnG4FJRIJQgi2LBwSdbyWJP4Fvj1lIgSEDW?=
 =?us-ascii?q?SECEQFVEw0KCwkFiTWDAAUhKYFrgQkWgnKCTAKCV4FnCWCEOoMrYoEHLYERg?=
 =?us-ascii?q?R86R4E8gTYvGyELgiGBNhWBIYEGgk9qTjcCDQI3giQkXIJRhhRAAwsYDUgRL?=
 =?us-ascii?q?DUGDhsGPm4HrFlGglMHgQ58yBmEJKE/GjOqSwGTIIVXIqQYhGaBZzyBWXAVg?=
 =?us-ascii?q?yJSGQ/ZIUYyOwIHCwEBAwmOBwEB?=
IronPort-Data: A9a23:W5Eh9q75VET7agsN84htawxRtDDGchMFZxGqfqrLsTDasY5as4F+v
 mBJUWjSPfuDZGKgfNFwbIi3o0wFvpKDzYVjQVFo+y4xZn8b8sCt6fZ1gavT04J+CuWZESqLO
 u1HMoGowPgcFyKa+1H3dOC4/RGQ7InQLpLkEunIJyttcgFtTSYlmHpLlvUw6mJSqYDR7zil5
 5Wr+qUzBHf/g2QoazpNtPrfwP9SlK2aVA0w7wRWic9j5Dcyp1FNZLoDKKe4KWfPQ4U8NoaSW
 +bZwbilyXjS9hErB8nNuu6TnpoiG+O60aCm0xK6aoD66vRwjnVaPpUTaJLwXXxqZwChxLid/
 jniWauYEm/FNoWU8AgUvoIx/ytWZcWq85efSZSzXFD6I0DuKxPRL/tS4E4eGNMiy+FcC311y
 O0/MmAWU0GDoMCH6efuIgVsrpxLwMjDJogTvDRkiDreF/tjGcqFSKTR7tge1zA17ixMNa+BP
 IxCNnw1MUmGOkYeUrsUIMpWcOOAjGb2bCdKuVS9rqss6G+Vxwt0uFToGICKJ4DTGZ8Mxy50o
 Era1E/+OT0VbuW+0HmC6S/vnN+fnCLkDdd6+LqQs6QCbEeo7m8SEx0RU3O4rOO/h0r4XMhQQ
 2QK+S0zqYAx+VatQ927WAe3yFaAvxgBS59IE/wS7ACW1rGS4gCXHGEIQzdNLts8u6ceQT0sy
 0/MnN7zAzFrmKOaRGjb9bqOqz62fy8PIgc/iTQsVwAJ5Zzn5Yo0lB+KFowlG6+uhdqzEjb1q
 9yXkBUDa3wopZZj/82GEZrv027ESkThJuLt2jjqYw==
IronPort-HdrOrdr: A9a23:NQDGba7cdCFe3vrEnQPXwMnXdLJyesId70hD6qm+c3Nom6uj5q
 WTdZsgtCMc5Ax9ZJhCo6HjBED/exPhHPdOiOF7V4tKNzOJhILHFu1fBKLZslnd8lXFh41gPW
 MKSdkZNDU2ZmIK6vrH3A==
X-Talos-CUID: 9a23:i0uKsmBuY0K7q8/6Eww5zn8TMco5SUDM622AOHLpCUFLeZTAHA==
X-Talos-MUID: =?us-ascii?q?9a23=3AVoWP7Q/+2G8GgHkIMqQBKIWQf9tDyKOVJE9XqLQ?=
 =?us-ascii?q?f+M6faG9qC2ecjSviFw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.11,211,1725321600"; 
   d="scan'208";a="275414211"
Received: from rcdn-l-core-02.cisco.com ([173.37.255.139])
  by rcdn-iport-5.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384; 17 Oct 2024 14:30:36 +0000
Received: from sjc-ads-7158.cisco.com (sjc-ads-7158.cisco.com [10.30.217.233])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by rcdn-l-core-02.cisco.com (Postfix) with ESMTPS id 1E57E18000236;
	Thu, 17 Oct 2024 14:30:36 +0000 (GMT)
Received: by sjc-ads-7158.cisco.com (Postfix, from userid 1776881)
	id 97BCCCC1280; Thu, 17 Oct 2024 07:30:35 -0700 (PDT)
From: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: xe-linux-external@cisco.com,
	Daniel Walker <danielwa@cisco.com>,
	Bartosz Stania <sbartosz@cisco.com>,
	Bartosz Wawrzyniak <bwawrzyn@cisco.com>
Subject: [PATCH] phy: cadence: Sierra: Add multilink SGMII + SGMII register configuration
Date: Thu, 17 Oct 2024 14:30:08 +0000
Message-Id: <20241017143008.983439-1-bwawrzyn@cisco.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-Outbound-SMTP-Client: 10.30.217.233, sjc-ads-7158.cisco.com
X-Outbound-Node: rcdn-l-core-02.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_073051_856118_6207FD4B 
X-CRM114-Status: GOOD (  12.55  )
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

Add multilink SGMII + SGMII register configuration (no SSC) for the
cdns,sierra-phy-t0 compatibility string.
In the case of multilink, when two links are of the same type, 
do not enable PLL LC1. Use PLL LC for both links.

Signed-off-by: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
---
 drivers/phy/cadence/phy-cadence-sierra.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index aeec6eb6be23..c606b281da39 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -1262,12 +1262,18 @@ static int cdns_sierra_phy_configure_multilink(struct cdns_sierra_phy *sp)
 	clk_set_rate(sp->input_clks[CMN_REFCLK_DIG_DIV], 25000000);
 	clk_set_rate(sp->input_clks[CMN_REFCLK1_DIG_DIV], 25000000);
 
-	/* PHY configured to use both PLL LC and LC1 */
-	regmap_field_write(sp->phy_pll_cfg_1, 0x1);
-
 	phy_t1 = sp->phys[0].phy_type;
 	phy_t2 = sp->phys[1].phy_type;
 
+
+	/*
+	 * Configure both PLL LC and LC1 when link types are different.
+	 * If both links are of the same type, there is no need to use
+	 * a second PLL.
+	 */
+	if (phy_t1 != phy_t2)
+		regmap_field_write(sp->phy_pll_cfg_1, 0x1);
+
 	/*
 	 * PHY configuration for multi-link operation is done in two steps.
 	 * e.g. Consider a case for a 4 lane PHY with PCIe using 2 lanes and QSGMII other 2 lanes.
@@ -2541,6 +2547,9 @@ static const struct cdns_sierra_data cdns_map_sierra = {
 			[TYPE_NONE] = {
 				[NO_SSC] = &sgmii_cmn_vals,
 			},
+			[TYPE_SGMII] = {
+				[NO_SSC] = &sgmii_cmn_vals,
+			},
 			[TYPE_PCIE] = {
 				[NO_SSC] = &sgmii_100_no_ssc_plllc1_opt3_cmn_vals,
 				[EXTERNAL_SSC] = &sgmii_100_no_ssc_plllc1_opt3_cmn_vals,
@@ -2582,6 +2591,9 @@ static const struct cdns_sierra_data cdns_map_sierra = {
 			[TYPE_NONE] = {
 				[NO_SSC] = &sgmii_pma_ln_vals,
 			},
+			[TYPE_SGMII] = {
+				[NO_SSC] = &sgmii_pma_ln_vals,
+			},
 			[TYPE_PCIE] = {
 				[NO_SSC] = &sgmii_100_no_ssc_plllc1_opt3_ln_vals,
 				[EXTERNAL_SSC] = &sgmii_100_no_ssc_plllc1_opt3_ln_vals,
-- 
2.28.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
