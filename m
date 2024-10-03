Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E026CF34A3
	for <linux-phy@archiver.kernel.org>; Thu,  3 Oct 2024 12:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8d0H6CwIk+phb9AX9QFOTTFrpdb2+U401W2Ce56krnE=; b=lJK00nRwUzPKER
	m2LgR6YkSC+Ko6L+VZeIojx0mPENtYqGSc/mBDG56einfXgP5pf8X8/myjMAWgm/9gFghvdWqBWsk
	A2Pm6LiuDibvr5KX3uk+1K/bWZ9AB5Bc919+wxA2RCjx3SAYhhi2rn5Qf1ndPNfiLmNu+bhCd41D2
	XFueIoadlP5ZnG6TX3fW/LrCw4hNvNlkFjRdCZF7oEDRAVAFVQihI10YnW8kvg+cGHtSAuxPeLLUn
	hpScSWH19CJ0VmkS3J7aqbbG7HHh7Mat+XCY+hesfHPm3y15TkP6ric1L5bEVeHCMFbC5nYQ+3Rj2
	WYpV8cF9rAXJCnysgD+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swL2c-000000091ni-3rSj;
	Thu, 03 Oct 2024 12:34:46 +0000
Received: from rcdn-iport-9.cisco.com ([173.37.86.80])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swL2Y-000000091n6-3Gig
	for linux-phy@lists.infradead.org;
	Thu, 03 Oct 2024 12:34:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=cisco.com; i=@cisco.com; l=4947; q=dns/txt; s=iport;
  t=1727958882; x=1729168482;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=Zc/rAQF015YaK9o693t/zYK9OANf7ZhArgT03L7FmX4=;
  b=a2VZUWR+64FFUQdmtOT3GBF1/2xlXlrzRqMsOWFmcoAN0RZ6+N1rxhOR
   4ws8ku81/KSAbGu6JGTA++xpgQt2Ilp7fmViQPIbzJySADDCmF0kAkcNN
   YlrA21OOC5ekQsCFdUda3sXMw2cppc+jDmxJH86FMwfi49romoqefS4wy
   0=;
X-CSE-ConnectionGUID: AavTDHKjSKucg6DmFrYtzA==
X-CSE-MsgGUID: WGSFNnRjTQeja32XygjPXA==
X-IronPort-AV: E=Sophos;i="6.11,174,1725321600"; 
   d="scan'208";a="268654812"
Received: from rcdn-core-1.cisco.com ([173.37.93.152])
  by rcdn-iport-9.cisco.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Oct 2024 12:34:35 +0000
Received: from sjc-ads-7158.cisco.com (sjc-ads-7158.cisco.com [10.30.217.233])
	by rcdn-core-1.cisco.com (8.15.2/8.15.2) with ESMTPS id 493CYZkw013187
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Thu, 3 Oct 2024 12:34:35 GMT
Received: by sjc-ads-7158.cisco.com (Postfix, from userid 1776881)
	id ED1BBCC1280; Thu,  3 Oct 2024 05:34:34 -0700 (PDT)
From: Bartosz Wawrzyniak <bwawrzyn@cisco.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bartosz Wawrzyniak <bwawrzyn@cisco.com>,
        Aswath Govindraju <a-govindraju@ti.com>,
        Swapnil Jakhade <sjakhade@cadence.com>, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc: xe-linux-external@cisco.com, Daniel Walker <danielwa@cisco.com>,
        Bartosz Stania <sbartosz@cisco.com>
Subject: [PATCH] phy: cadence: Sierra: Fix offset of DEQ open eye algorithm control register
Date: Thu,  3 Oct 2024 12:34:02 +0000
Message-Id: <20241003123405.1101157-1-bwawrzyn@cisco.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-Outbound-SMTP-Client: 10.30.217.233, sjc-ads-7158.cisco.com
X-Outbound-Node: rcdn-core-1.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_053443_375683_6751645C 
X-CRM114-Status: UNSURE (   9.25  )
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
