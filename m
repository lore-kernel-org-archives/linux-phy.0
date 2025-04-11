Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BA09C36010
	for <linux-phy@archiver.kernel.org>; Fri, 11 Apr 2025 13:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a7y9um67yFnOqI7DbpiqGBL1zC+MbYsVx+uhgHxi4rA=; b=S42E6gt+2tWwMM
	u8cMLtpiSmS6PzE8iiugslfSlriGfYpPmlmfGVRgvI/iAFy1HN+IO+hQW1AT8vWBoyvwLhRE0jyD9
	Wf8QzTNnDBXvN0zeBaqqHCvYtE42aEBVtspksqFXh8nHMF+irW+2Vi5TyM2EyQLKcIZkZcyCqR0O5
	AfZmoII3TDsu3VfzwPjfV7GXaLzHnI1izAIOgTLzQtzT5rNM6v388UkyV0chekz3Hnqw/31gBhrZY
	tY6f8fM7NgZgdP24Sbwtvi5uOEhFC18yvS5Ua8aUmZEvyTnkfbUFQHDYli/KBG19+CSZDcfiqNPKT
	jPfgU/OQAKciQ7KMZ2xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3EOc-0000000DuUE-0U7K;
	Fri, 11 Apr 2025 13:26:14 +0000
Received: from rcdn-iport-7.cisco.com ([173.37.86.78])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3E4a-0000000Dqhx-3kke
	for linux-phy@lists.infradead.org;
	Fri, 11 Apr 2025 13:05:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=cisco.com; i=@cisco.com; l=2102; q=dns/txt;
  s=iport01; t=1744376732; x=1745586332;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=NNevI5c7bUcc5if4XkYhDFr7yVELYRPdbyKO8NXMmWo=;
  b=P/w9kMfp0xdcNN0vq9NDnOcVWmHCUWpL15iQ3RrCkOB1R6bgMDwJRS2h
   M8IhTUtXbpq158Mo81RZubFpSGBE/IIAp8NkvJ8AzVtmOsnDi1ofs7fzO
   H2fnoixP9Lr/7Hz5Y/CbppsrBtQs/MuHl39MR2UdM+pX8jiS3F0Q7JAqR
   dDqg0aeCbjdwoV0md38+6Ix7IAZOyd3BcPryKg+yC02ONV7AxJxdJbrdX
   W9TOm8ViaXZPWF5Ug1Gi0lxawCsMN36EDvpSohRZg+x3xLpQAsRoeKa9i
   HW21NoYvIp7+vyUVg0iPe6kpdqUslaGJeHOLaXsdCzvju+Pp3kjfednEa
   w==;
X-CSE-ConnectionGUID: 5FVlY0jCQOi3+Wfc0q5DxA==
X-CSE-MsgGUID: 0SLNDZzjTnWF6tpAibQDIg==
X-IPAS-Result: =?us-ascii?q?A0AJAACFEvln/5H/Ja1aGQEBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?RIBAQEBAQEBAQEBAQGCAQIBAQEBAQsBgkqBT0NIojySIIElA1YPAQEBD0QEA?=
 =?us-ascii?q?QGFB4sqAiY2Bw4BAgQBAQEBAwIDAQEBAQEBAQEBAQELAQEFAQEBAgEHBYEOE?=
 =?us-ascii?q?4YIhl0rCwFGKWMxARKDAoJlA69pgXkzgQHeNIFugUgBjUyFZycbgUlEglCCL?=
 =?us-ascii?q?YsHBINEg0oYLYIgmmpIgSEDWSwBVRMNCgsHBYE5MwMgCgsMCxIcFQIUMg8cN?=
 =?us-ascii?q?R2BfINygjBPdAKBQYIRcIEUiRmEVy1PhDkDQUADCxgNSBEsNwYOGwY+bgeXE?=
 =?us-ascii?q?YQNB4EOfMhDhCWhSBozqlYBkyaFWCKkKYRogW4GL4FZcBWDIlIZD45Zy3NGM?=
 =?us-ascii?q?jwCBwsBAQMJkWUBAQ?=
IronPort-Data: A9a23:D+UfJKu3vgx7nhhc4V1QP/b1WOfnVF9fMUV32f8akzHdYApBsoF/q
 tZmKWiEb/vYNjbzfowlbYy1ox4P65WAn99nGwQ9rCxgRSNGgMeUXt7xwmUckM+xwmwvaGo9s
 q3yv/GZdJhcokf0/0nrav656yEhjclkf5KkYMbcICd9WAR4fykojBNnioYRj5Vh6TSDK1vlV
 eja/YuGZTdJ5xYuajhJs/7a8Us01BjPkGpwUmIWNKgjUGD2zxH5PLpHTYmtIn3xRJVjH+LSb
 47r0LGj82rFyAwmA9Wjn6yTWhVirmn6ZFXmZtJ+AsBOszAazsAA+v9T2Mk0NS+7vw60c+VZk
 72hg3AfpTABZcUgkMxFO/VR/roX0aduoNcrKlDn2SCfItGvn3bEm51T4E8K0YIwp8hJBVAW9
 9chDzFWLS+NjLqvnZ6rY7w57igjBJGD0II3oHpsy3TdSP0hW52GG/WM7t5D1zB2jcdLdRrcT
 5NGMnw0M1KaPkAJYwtKYH49tL/Aan3XeSJRt0iHtKwf6GnIxws327/oWDbQUofXH50EwBfI/
 woq+UyhOTU8GO6NywaDzVzymvfmnCnCdKMdQejQGvlCxQf7KnYoIB4XTlu8p9G6h1S4VtYZL
 FYbkgIwrq8v8GSoQ8P7Uhn+p2SL1jYYWtxNA6gi6BClzqvP/x3fB24KVDdNZdUq8sgsSlQC0
 l6PgsOsBjF1trCRYWyS+63Srj6oPyURa2gYakc5oRAt+dLvpsQ3yxnIVNsmSP7zhdzuEja2y
 DePxMQju4guYQcw//3T1Tj6b/iE//AlkiZdCt3rY1+Y
IronPort-HdrOrdr: A9a23:tNCjnKhjCfvKgdDkfpuGCsjVlHBQXtEji2hC6mlwRA09TyVXra
 +TdZMgpHrJYVkqOU3I9ersBEDiewK/yXcK2+ks1N6ZNWGM0ldAR7sN0WKN+VHd8lXFh41gPW
 MKSdkYNDU2ZmIK6frH3A==
X-Talos-CUID: =?us-ascii?q?9a23=3AbB7iJmvai0SBq+syNN33PzEh6It4XEPZ/S/SCHa?=
 =?us-ascii?q?fCD0qd7OeEUbN1LNNxp8=3D?=
X-Talos-MUID: 9a23:rRShlwYioKeoueBT7wTIoh1QJsVU5ZuAVlwVuJQMguWlOnkl
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.15,205,1739836800"; 
   d="scan'208";a="352096981"
Received: from rcdn-l-core-08.cisco.com ([173.37.255.145])
  by rcdn-iport-7.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384; 11 Apr 2025 13:05:25 +0000
Received: from sjc-ads-7158.cisco.com (sjc-ads-7158.cisco.com [10.30.217.233])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by rcdn-l-core-08.cisco.com (Postfix) with ESMTPS id 701C41800058A;
	Fri, 11 Apr 2025 13:05:25 +0000 (GMT)
Received: by sjc-ads-7158.cisco.com (Postfix, from userid 1776881)
	id 07810CC1280; Fri, 11 Apr 2025 06:05:25 -0700 (PDT)
From: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: xe-linux-external@cisco.com,
	Daniel Walker <danielwa@cisco.com>,
	Bartosz Stania <sbartosz@cisco.com>,
	Bartosz Wawrzyniak <bwawrzyn@cisco.com>
Subject: [PATCH RESEND] phy: cadence: Sierra: Add multilink SGMII + SGMII register configuration
Date: Fri, 11 Apr 2025 13:05:06 +0000
Message-Id: <20250411130509.982422-1-bwawrzyn@cisco.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Outbound-SMTP-Client: 10.30.217.233, sjc-ads-7158.cisco.com
X-Outbound-Node: rcdn-l-core-08.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_060533_194440_F35BF9C6 
X-CRM114-Status: GOOD (  12.23  )
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
