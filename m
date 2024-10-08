Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EC64CEFC34
	for <linux-phy@archiver.kernel.org>; Tue,  8 Oct 2024 17:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=48+HCXMGrrxPQiuO4khjvuoOoc/cu6XVETvOg/UyAME=; b=egakkpA3mQiXFI
	Tnw8Xt0V/+TEhIrbTkyZjjD+j7tVnMfkbx/W04sl37N8TicaybeN7TTDk+hNoZ0KI/r2XTroeWctY
	mzuKSVC7t7GEmSNVbNZOfBZFijp873xiBYH2YT4ibLUZxEinSyJyspWytqcIvfQrKTEbM620AIhxh
	YJmIeeDSgkZWAEPyzG06uSjInYLRz6LLSf0BAiNUwLn99LSYfu7hkYGbkM5AQRQAWTHdQBXOJaR0b
	pIdmaDmGkSVuKa8d0AaB2ZMMqTQQ+i/NJ2WRqnlSFzGI6kmYkR2NtPjUhz10QUIwAjT9KoMpJGDJL
	DvP/2aIpbKw62hza0pog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syDjV-00000006bnp-1F5U;
	Tue, 08 Oct 2024 17:10:49 +0000
Received: from rcdn-iport-1.cisco.com ([173.37.86.72])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syDjS-00000006bmt-0vCK
	for linux-phy@lists.infradead.org;
	Tue, 08 Oct 2024 17:10:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=cisco.com; i=@cisco.com; l=5044; q=dns/txt; s=iport;
  t=1728407446; x=1729617046;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=cgf0xBsMQs7AQN/5YQYdocnpHKvx2IgkCpijo5VHKqc=;
  b=kMS+32O9tREjFTTL2mjV0asjwjvkgwqwa8l3pxr0FBKOaunxx4G1H2Se
   4AZb8xLuWMLGykPK2yRdilq9ZfRsLFhsCZhBHFJxF9dEi+pnLlxCeXSoH
   fMPCwI8NmLHk2yTqwG7I7CwoOjz8JnSP1FWLIw/GFzUHppTwyK964FLRP
   k=;
X-CSE-ConnectionGUID: ev9OfBmXS8qNpg0KMJ/GeA==
X-CSE-MsgGUID: MN48UY+2SzmGx+SNBbKxAg==
X-IPAS-Result: =?us-ascii?q?A0AZAADpZgVngY7/Ja1aHAEBAQEBAQcBARIBAQQEAQGBe?=
 =?us-ascii?q?wcBAQsBhBlDSIxylUeSJIElA1YPAQEBD0QEAQGFBwKKFwImNAkOAQIEAQEBA?=
 =?us-ascii?q?QMCAwEBAQEBAQEBAQUBAQUBAQECAQcFFAEBPQUOO4YIhlwCAQMyAUYQGTgrK?=
 =?us-ascii?q?wYBEoMBgmUDrUOCLIEB3jOBbBiBMAGNQnCEdycbgUlEglCBPm+DeocNBJYrV?=
 =?us-ascii?q?w+CVoN1FolskURIgSEDWSECEQFVEw0KCwkFiTWDAAUhKYFrgQoWgnWCTAKCV?=
 =?us-ascii?q?4FnCWCEOoI7cGWBBy2BEYEfOkeBO4E2LxskC16BQ4EbARYGFQSBJUc/gktrT?=
 =?us-ascii?q?jkCDQI3giUkZIJWhhNAAwsYDUgRLDUGDhsGPm4HrGNGglKBDnxBbJNhsweEI?=
 =?us-ascii?q?qE8GjOEBaZFmHYigjShYYRmgWc6gVtwFYMiUhkPjlnHVEYyOwIHCwEBAwmOC?=
 =?us-ascii?q?AEB?=
IronPort-Data: A9a23:y6K616zhafqHgfwBiux6t+fXxirEfRIJ4+MujC+fZmUNrF6WrkUGy
 TYcWmjXOfuNZ2HzL9ElbN+xoRsG78ODzYBgHABoq1hgHilAwSbn6Xt1DatR0we6dJCroJdPt
 p1GAjX4BJlpCCKa/FH1a+iJQUBUjcmgXqD7BPPPJhd/TAplTDZJoR94kobVuKYw6TSCK13L4
 IqaT/H3Ygf/h2csajJMsMpvlTs21BjMkGJA1rABTagjUG/2zxE9EJ8ZLKetGHr0KqE8NvK6X
 evK0Iai9Wrf+Ro3Yvv9+losWhRXKlJ6FVHmZkt+A8BOsDAbzsAB+vpT2M4nVKtio27hc+adZ
 zl6ncfYpQ8BZsUgkQmGOvVSO3kW0aZuoNcrLZUj2CCe5xWuTpfi/xlhJEwobKoW0ONHOjFX0
 +QXcBMoTFesisvjldpXSsE07igiBNPgMIVavjRryivUSK57B5vCWK7No9Rf2V/chOgXQq2YP
 JVfM2cyKk2cOXWjOX9PYH46tO23j2blYSxegFmUvqEwpWPUyWSd1ZC3b4KFJIXWFZ09ckCwg
 0Sar1nIQUshJtmw2Xm+1Fimpf/mknauMG4VPOblrqEx2gL7KnYoIAYUXFi7qPW0okW3V99ZI
 EFS8S0rxYAx9VerSd/VXBCipnOA+BkGVLJ4De499QWlyafO5QudQG8eQVZpbN0gqd9zXTw7/
 luIhM/yQz1pvqecRX+U+vGTtzzaESFQImgcZCkIVwIH/vH/occ4iRenZtJiFrOly974Azf9x
 xiUoyUkwbYel8gG0+O851+vvt63joLCQghw4kDcWXioq1skIoWkfIevr1Pc6J6sMbp1UHGMo
 ikjleKb3NteFLeVm3SuZcdKM7yAsqPt3CLnvXZjGJwo9jKI8nGlfJxN7DwWGKuPGphYEdMOS
 BGP0T699KNu0G2Wgbibir9d6vjGL4C7SrwJtdiNMrKih6SdkifcrEmCgmbJhgjQfLAEy/1XB
 HtiWZ/E4YwmIapm1iGqYOwWzKUmwCszrUuKGsqrlEv4gOfFPSXEIVvgDLdoRr1phE9jiFiEm
 +uzy+PQk32zrcWnOHCOqt9JRbz0BSZqVcmqwyCoSgJzClE7QD56UaC5LUIJcI1+lKMdjfbT4
 ny4QQdZzlG57UAr2i3UAk2PnIjHBM4lxVpiZHREFQ/xhxAejXOHtvZ3m20fJ+h/rLQLID8dZ
 6VtRvhs9dwRG22Zq25CPPEQbuVKLXyWuO5HBAL9CBBXQnKqb1WhFgPMFuc3yBQzMw==
IronPort-HdrOrdr: A9a23:sf+asqxvDJ1WD+d5msMMKrPwEb1zdoMgy1knxilNoNJuHfBw8P
 re+8jzuiWUtN98YhwdcJW7Scu9qBDnhPpICPcqXYtKNTOO0ADDEGgh1/qG/9SKIUPDH4BmuZ
 uIWpIObuEYdWIK7voTJGKDYq4dKB7tytHQudvj
X-Talos-CUID: =?us-ascii?q?9a23=3Ai/3Q42t+u3ZJdW/e6bbJ3eaU6IsobCz6wl3VE3T?=
 =?us-ascii?q?oEEBxR+W2bH3X165Nxp8=3D?=
X-Talos-MUID: 9a23:JyRRlQRWZnJ9zPcRRXTJom0yCfYruZ+8DW8d0q4gkcOnJQV/bmI=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.11,187,1725321600"; 
   d="scan'208";a="270861480"
Received: from rcdn-l-core-05.cisco.com ([173.37.255.142])
  by rcdn-iport-1.cisco.com with ESMTP/TLS/TLS_AES_256_GCM_SHA384; 08 Oct 2024 17:10:36 +0000
Received: from sjc-ads-7158.cisco.com (sjc-ads-7158.cisco.com [10.30.217.233])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by rcdn-l-core-05.cisco.com (Postfix) with ESMTPS id 995DF18000238;
	Tue,  8 Oct 2024 17:10:35 +0000 (GMT)
Received: by sjc-ads-7158.cisco.com (Postfix, from userid 1776881)
	id 1AFF0CC1280; Tue,  8 Oct 2024 10:10:35 -0700 (PDT)
From: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	Aswath Govindraju <a-govindraju@ti.com>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: xe-linux-external@cisco.com,
	Daniel Walker <danielwa@cisco.com>,
	Bartosz Stania <sbartosz@cisco.com>,
	Bartosz Wawrzyniak <bwawrzyn@cisco.com>
Subject: [PATCH v2] phy: cadence: Sierra: Fix offset of DEQ open eye algorithm control register
Date: Tue,  8 Oct 2024 17:09:59 +0000
Message-Id: <20241008171000.2665935-1-bwawrzyn@cisco.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <ZwN+8xpOl4+Ggaha@vaman>
References: <ZwN+8xpOl4+Ggaha@vaman>
MIME-Version: 1.0
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-Outbound-SMTP-Client: 10.30.217.233, sjc-ads-7158.cisco.com
X-Outbound-Node: rcdn-l-core-05.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_101046_369491_73F83CD3 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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

Fix the value of SIERRA_DEQ_OPENEYE_CTRL_PREG and add a definition for
SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG. This fixes the SGMII single link
register configuration.

Fixes: 7a5ad9b4b98c ("phy: cadence: Sierra: Update single link PCIe register configuration")
Signed-off-by: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
---
v2: Remove empty line in the commit message
v1: Fix offset of DEQ open eye control register
---
 drivers/phy/cadence/phy-cadence-sierra.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/cadence/phy-cadence-sierra.c b/drivers/phy/cadence/phy-cadence-sierra.c
index aeec6eb6be23..dfc4f55d112e 100644
--- a/drivers/phy/cadence/phy-cadence-sierra.c
+++ b/drivers/phy/cadence/phy-cadence-sierra.c
@@ -174,8 +174,9 @@
 #define SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG		0x150
 #define SIERRA_DEQ_TAU_CTRL2_PREG			0x151
 #define SIERRA_DEQ_TAU_CTRL3_PREG			0x152
-#define SIERRA_DEQ_OPENEYE_CTRL_PREG			0x158
+#define SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG		0x158
 #define SIERRA_DEQ_CONCUR_EPIOFFSET_MODE_PREG		0x159
+#define SIERRA_DEQ_OPENEYE_CTRL_PREG			0x15C
 #define SIERRA_DEQ_PICTRL_PREG				0x161
 #define SIERRA_CPICAL_TMRVAL_MODE1_PREG			0x170
 #define SIERRA_CPICAL_TMRVAL_MODE0_PREG			0x171
@@ -1733,7 +1734,7 @@ static const struct cdns_reg_pairs ml_pcie_100_no_ssc_ln_regs[] = {
 	{0x3C0F, SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG},
 	{0x1C0C, SIERRA_DEQ_TAU_CTRL2_PREG},
 	{0x0100, SIERRA_DEQ_TAU_CTRL3_PREG},
-	{0x5E82, SIERRA_DEQ_OPENEYE_CTRL_PREG},
+	{0x5E82, SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG},
 	{0x002B, SIERRA_CPI_TRIM_PREG},
 	{0x0003, SIERRA_EPI_CTRL_PREG},
 	{0x803F, SIERRA_SDFILT_H2L_A_PREG},
@@ -1797,7 +1798,7 @@ static const struct cdns_reg_pairs ti_ml_pcie_100_no_ssc_ln_regs[] = {
 	{0x3C0F, SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG},
 	{0x1C0C, SIERRA_DEQ_TAU_CTRL2_PREG},
 	{0x0100, SIERRA_DEQ_TAU_CTRL3_PREG},
-	{0x5E82, SIERRA_DEQ_OPENEYE_CTRL_PREG},
+	{0x5E82, SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG},
 	{0x002B, SIERRA_CPI_TRIM_PREG},
 	{0x0003, SIERRA_EPI_CTRL_PREG},
 	{0x803F, SIERRA_SDFILT_H2L_A_PREG},
@@ -1874,7 +1875,7 @@ static const struct cdns_reg_pairs ml_pcie_100_int_ssc_ln_regs[] = {
 	{0x3C0F, SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG},
 	{0x1C0C, SIERRA_DEQ_TAU_CTRL2_PREG},
 	{0x0100, SIERRA_DEQ_TAU_CTRL3_PREG},
-	{0x5E82, SIERRA_DEQ_OPENEYE_CTRL_PREG},
+	{0x5E82, SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG},
 	{0x002B, SIERRA_CPI_TRIM_PREG},
 	{0x0003, SIERRA_EPI_CTRL_PREG},
 	{0x803F, SIERRA_SDFILT_H2L_A_PREG},
@@ -1941,7 +1942,7 @@ static const struct cdns_reg_pairs ti_ml_pcie_100_int_ssc_ln_regs[] = {
 	{0x3C0F, SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG},
 	{0x1C0C, SIERRA_DEQ_TAU_CTRL2_PREG},
 	{0x0100, SIERRA_DEQ_TAU_CTRL3_PREG},
-	{0x5E82, SIERRA_DEQ_OPENEYE_CTRL_PREG},
+	{0x5E82, SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG},
 	{0x002B, SIERRA_CPI_TRIM_PREG},
 	{0x0003, SIERRA_EPI_CTRL_PREG},
 	{0x803F, SIERRA_SDFILT_H2L_A_PREG},
@@ -2012,7 +2013,7 @@ static const struct cdns_reg_pairs ml_pcie_100_ext_ssc_ln_regs[] = {
 	{0x3C0F, SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG},
 	{0x1C0C, SIERRA_DEQ_TAU_CTRL2_PREG},
 	{0x0100, SIERRA_DEQ_TAU_CTRL3_PREG},
-	{0x5E82, SIERRA_DEQ_OPENEYE_CTRL_PREG},
+	{0x5E82, SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG},
 	{0x002B, SIERRA_CPI_TRIM_PREG},
 	{0x0003, SIERRA_EPI_CTRL_PREG},
 	{0x803F, SIERRA_SDFILT_H2L_A_PREG},
@@ -2079,7 +2080,7 @@ static const struct cdns_reg_pairs ti_ml_pcie_100_ext_ssc_ln_regs[] = {
 	{0x3C0F, SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG},
 	{0x1C0C, SIERRA_DEQ_TAU_CTRL2_PREG},
 	{0x0100, SIERRA_DEQ_TAU_CTRL3_PREG},
-	{0x5E82, SIERRA_DEQ_OPENEYE_CTRL_PREG},
+	{0x5E82, SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG},
 	{0x002B, SIERRA_CPI_TRIM_PREG},
 	{0x0003, SIERRA_EPI_CTRL_PREG},
 	{0x803F, SIERRA_SDFILT_H2L_A_PREG},
@@ -2140,7 +2141,7 @@ static const struct cdns_reg_pairs cdns_pcie_ln_regs_no_ssc[] = {
 	{0x3C0F, SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG},
 	{0x1C0C, SIERRA_DEQ_TAU_CTRL2_PREG},
 	{0x0100, SIERRA_DEQ_TAU_CTRL3_PREG},
-	{0x5E82, SIERRA_DEQ_OPENEYE_CTRL_PREG},
+	{0x5E82, SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG},
 	{0x002B, SIERRA_CPI_TRIM_PREG},
 	{0x0003, SIERRA_EPI_CTRL_PREG},
 	{0x803F, SIERRA_SDFILT_H2L_A_PREG},
@@ -2215,7 +2216,7 @@ static const struct cdns_reg_pairs cdns_pcie_ln_regs_int_ssc[] = {
 	{0x3C0F, SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG},
 	{0x1C0C, SIERRA_DEQ_TAU_CTRL2_PREG},
 	{0x0100, SIERRA_DEQ_TAU_CTRL3_PREG},
-	{0x5E82, SIERRA_DEQ_OPENEYE_CTRL_PREG},
+	{0x5E82, SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG},
 	{0x002B, SIERRA_CPI_TRIM_PREG},
 	{0x0003, SIERRA_EPI_CTRL_PREG},
 	{0x803F, SIERRA_SDFILT_H2L_A_PREG},
@@ -2284,7 +2285,7 @@ static const struct cdns_reg_pairs cdns_pcie_ln_regs_ext_ssc[] = {
 	{0x3C0F, SIERRA_DEQ_TAU_CTRL1_SLOW_MAINT_PREG},
 	{0x1C0C, SIERRA_DEQ_TAU_CTRL2_PREG},
 	{0x0100, SIERRA_DEQ_TAU_CTRL3_PREG},
-	{0x5E82, SIERRA_DEQ_OPENEYE_CTRL_PREG},
+	{0x5E82, SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG},
 	{0x002B, SIERRA_CPI_TRIM_PREG},
 	{0x0003, SIERRA_EPI_CTRL_PREG},
 	{0x803F, SIERRA_SDFILT_H2L_A_PREG},
-- 
2.28.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
