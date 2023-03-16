Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABD31C6FD19
	for <linux-phy@archiver.kernel.org>; Thu, 16 Mar 2023 12:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zMo3y6sMHcgMjiWopi5NcvFA4Us2VrR7DbpSHlyNFlY=; b=uatBs78WUDoJML
	B0ya7646Ke6mFisy83ls/+GcwJRSFyUa7iFFE/WQ0EhWJrlCbji4Zzu0V912Nlh3YmfLZvSlWdA4T
	75C2zzvO76iA2TPBGVWCY7WRfJg3op9MxX9ThIThdUVpTiYFKlQCHkp6CDsoiN7cuUw066tM6SAnB
	7fWdgZaebjQXGp+1GRLtIXIMcmfG3IhbFPiro3alGcz4xXFUZvyqRA1d/r4fmyRXSpVHnmnM6jT+a
	7k5xVVtbs/7GkiUjtZRo2BeYqGy0aV0ZbFlcSccOp9nkzLOtCFf2GS+ISOoFgEZyIX8bRVSzwPGVs
	0VE/8VEqnpOPyDaUUvvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcmN0-00GKZp-0Z;
	Thu, 16 Mar 2023 12:06:10 +0000
Received: from mga01.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcmMu-00GKXA-0R;
	Thu, 16 Mar 2023 12:06:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678968364; x=1710504364;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references;
  bh=oX16MPASgVn0QBxsOY4PclCdLg+myX80w1viNZawLes=;
  b=cQ0EzP30CfWK+00zG1fVItiOkzd3hSWrZZDlOND+TfCP1pTCdMj9yaQG
   RY9l0wBuOYCKyVpy7X3BXtMZxFT65FmCS9y/iKMWO/E9S6ReF0Sw3R9V3
   RYKUvoPX/gupsHckl+itP5gPCIPxgchAw5Uhxz9Ox912BOz9HquYmEzIi
   qqeSVGM/yJknzQlywgctLUZZEOKCDP0ZQ+wb/Ig635H5Um0u2g76rxrCY
   w4uhXRoqlwzUo9eopXeAAvzhYco56KBXJtvebnW7hjR226lyhW/UeT1rV
   p6lucHYT5QWDcrKCnfX3rDaP+qW9lkdmrEuC30rur210w3paayxGLC/94
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="365656999"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; 
   d="scan'208";a="365656999"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2023 05:06:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="768911596"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; 
   d="scan'208";a="768911596"
Received: from coresw01.iind.intel.com ([10.106.46.194])
  by FMSMGA003.fm.intel.com with ESMTP; 16 Mar 2023 05:05:55 -0700
From: rashmi.a@intel.com
To: ulf.hansson@linaro.org,
	michal.simek@xilinx.com,
	p.zabel@pengutronix.de,
	linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	yuancan@huawei.com,
	andriy.shevchenko@linux.intel.com,
	linux-phy@lists.infradead.org,
	mgross@linux.intel.com
Cc: kris.pan@linux.intel.com,
	adrian.hunter@intel.com,
	mahesh.r.vaidya@intel.com,
	nandhini.srikandan@intel.com,
	vasavi.v.itha@intel.com,
	kenchappa.demakkanavar@intel.com,
	furong.zhou@intel.com,
	mallikarjunappa.sangannavar@intel.com,
	rashmi.a@intel.com
Subject: [PATCH v2 1/4] mmc: sdhci-of-arasan: Remove Intel Thunder Bay SOC support
Date: Thu, 16 Mar 2023 17:35:46 +0530
Message-Id: <20230316120549.21486-2-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230316120549.21486-1-rashmi.a@intel.com>
References: <20230316120549.21486-1-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_050604_257772_9ADFA060 
X-CRM114-Status: GOOD (  13.45  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: "A, Rashmi" <rashmi.a@intel.com>

Remove Thunder Bay specific code as the product got cancelled
and there are no end customers or users.

Signed-off-by: A, Rashmi <rashmi.a@intel.com>
Reviewed-by: Hunter, Adrian <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 29 +----------------------------
 1 file changed, 1 insertion(+), 28 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 89c431a34c43..fbafc87266aa 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -193,13 +193,6 @@ static const struct sdhci_arasan_soc_ctl_map intel_lgm_sdxc_soc_ctl_map = {
 	.hiword_update = false,
 };
 
-static const struct sdhci_arasan_soc_ctl_map thunderbay_soc_ctl_map = {
-	.baseclkfreq = { .reg = 0x0, .width = 8, .shift = 14 },
-	.clockmultiplier = { .reg = 0x4, .width = 8, .shift = 14 },
-	.support64b = { .reg = 0x4, .width = 1, .shift = 24 },
-	.hiword_update = false,
-};
-
 static const struct sdhci_arasan_soc_ctl_map intel_keembay_soc_ctl_map = {
 	.baseclkfreq = { .reg = 0x0, .width = 8, .shift = 14 },
 	.clockmultiplier = { .reg = 0x4, .width = 8, .shift = 14 },
@@ -465,15 +458,6 @@ static const struct sdhci_pltfm_data sdhci_arasan_cqe_pdata = {
 			SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
 };
 
-static const struct sdhci_pltfm_data sdhci_arasan_thunderbay_pdata = {
-	.ops = &sdhci_arasan_cqe_ops,
-	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN | SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC,
-	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
-		SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
-		SDHCI_QUIRK2_STOP_WITH_TC |
-		SDHCI_QUIRK2_CAPS_BIT63_FOR_HS400,
-};
-
 #ifdef CONFIG_PM_SLEEP
 /**
  * sdhci_arasan_suspend - Suspend method for the driver
@@ -1150,12 +1134,6 @@ static struct sdhci_arasan_of_data sdhci_arasan_generic_data = {
 	.clk_ops = &arasan_clk_ops,
 };
 
-static const struct sdhci_arasan_of_data sdhci_arasan_thunderbay_data = {
-	.soc_ctl_map = &thunderbay_soc_ctl_map,
-	.pdata = &sdhci_arasan_thunderbay_pdata,
-	.clk_ops = &arasan_clk_ops,
-};
-
 static const struct sdhci_pltfm_data sdhci_keembay_emmc_pdata = {
 	.ops = &sdhci_arasan_cqe_ops,
 	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
@@ -1289,10 +1267,6 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
 		.compatible = "intel,keembay-sdhci-5.1-sdio",
 		.data = &intel_keembay_sdio_data,
 	},
-	{
-		.compatible = "intel,thunderbay-sdhci-5.1",
-		.data = &sdhci_arasan_thunderbay_data,
-	},
 	/* Generic compatible below here */
 	{
 		.compatible = "arasan,sdhci-8.9a",
@@ -1716,8 +1690,7 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
 
 	if (of_device_is_compatible(np, "intel,keembay-sdhci-5.1-emmc") ||
 	    of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sd") ||
-	    of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sdio") ||
-	    of_device_is_compatible(np, "intel,thunderbay-sdhci-5.1")) {
+	    of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sdio")) {
 		sdhci_arasan_update_clockmultiplier(host, 0x0);
 		sdhci_arasan_update_support64b(host, 0x0);
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
