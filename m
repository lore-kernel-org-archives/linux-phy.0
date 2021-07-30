Return-Path: <SRS0=wp9D=MW=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF5EC4338F
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jul 2021 06:33:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7CD3960F6B
	for <linux-phy@archiver.kernel.org>; Fri, 30 Jul 2021 06:33:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7CD3960F6B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Auep55xhENeP21FKiNWjPSkGT7V/ecT/BQH6e0WTFFU=; b=SqhhAaaXCl13j5
	UL/BemGtlpvdTScFWso8kF+R6SElUOkeAtoaTWJkRPBs/JB6W1Mh8zmUQwS/GHNVpqPS3p7KJo3Ml
	j/rDQgs0942znQLmN1nIDVq/p/Qe5gucU6uvShvKqcKVyXhIgSOiqBdZzDrydDDZVYgdriDlwcDGU
	MHuXf8t/ZQvIlsMuPA9rTo2DZ9WUtUNaTwjV1RU+Z9iyIqVic64Mh1AaYuFkk8fM701vpj3V/6sJ4
	3TQ7Ocxx+56rlxqSZ2DqEKmGUX8LGVi48f/G+PGWgKTzg25/P/VD934Nlhr+8GgQhBuDTZhWYTQgc
	eP0byi537Kqjo0824bPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9M5j-007UMG-1d; Fri, 30 Jul 2021 06:33:55 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9M5H-007UH7-AN; Fri, 30 Jul 2021 06:33:28 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="200247827"
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="200247827"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 23:33:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,281,1620716400"; d="scan'208";a="664714908"
Received: from coresw01.iind.intel.com ([10.223.252.64])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jul 2021 23:33:20 -0700
From: rashmi.a@intel.com
To: linux-drivers-review-request@eclists.intel.com, michal.simek@xilinx.com,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kishon@ti.com, vkoul@kernel.org, andriy.shevchenko@linux.intel.com,
 linux-phy@lists.infradead.org
Cc: mgross@linux.intel.com, kris.pan@linux.intel.com, furong.zhou@intel.com,
 mallikarjunappa.sangannavar@intel.com, adrian.hunter@intel.com,
 mahesh.r.vaidya@intel.com, nandhini.srikandan@intel.com,
 kenchappa.demakkanavar@intel.com, rashmi.a@intel.com
Subject: [PATCH 2/3] mmc: sdhci-of-arasan: Add intel Thunder Bay SOC support
 to the arasan eMMC driver
Date: Fri, 30 Jul 2021 12:03:08 +0530
Message-Id: <20210730063309.8194-3-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210730063309.8194-1-rashmi.a@intel.com>
References: <20210730063309.8194-1-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_233327_454137_FD6BDEF7 
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

From: Rashmi A <rashmi.a@intel.com>

Intel Thunder Bay SoC eMMC controller is based on Arasan
eMMC 5.1 host controller IP

Signed-off-by: Rashmi A <rashmi.a@intel.com>
Reviewed-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 839965f7c717..6f202fb7a546 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -185,6 +185,13 @@ static const struct sdhci_arasan_soc_ctl_map intel_lgm_sdxc_soc_ctl_map = {
 	.hiword_update = false,
 };
 
+static const struct sdhci_arasan_soc_ctl_map thunderbay_soc_ctl_map = {
+	.baseclkfreq = { .reg = 0x0, .width = 8, .shift = 14 },
+	.clockmultiplier = { .reg = 0x4, .width = 8, .shift = 14 },
+	.support64b = { .reg = 0x4, .width = 1, .shift = 24 },
+	.hiword_update = false,
+};
+
 static const struct sdhci_arasan_soc_ctl_map intel_keembay_soc_ctl_map = {
 	.baseclkfreq = { .reg = 0x0, .width = 8, .shift = 14 },
 	.clockmultiplier = { .reg = 0x4, .width = 8, .shift = 14 },
@@ -430,6 +437,15 @@ static const struct sdhci_pltfm_data sdhci_arasan_cqe_pdata = {
 			SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN,
 };
 
+static const struct sdhci_pltfm_data sdhci_arasan_thunderbay_pdata = {
+	.ops = &sdhci_arasan_cqe_ops,
+	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN | SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC,
+	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
+		SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
+		SDHCI_QUIRK2_STOP_WITH_TC |
+		SDHCI_QUIRK2_CAPS_BIT63_FOR_HS400,
+};
+
 #ifdef CONFIG_PM_SLEEP
 /**
  * sdhci_arasan_suspend - Suspend method for the driver
@@ -1098,6 +1114,12 @@ static struct sdhci_arasan_of_data sdhci_arasan_generic_data = {
 	.clk_ops = &arasan_clk_ops,
 };
 
+static const struct sdhci_arasan_of_data sdhci_arasan_thunderbay_data = {
+	.soc_ctl_map = &thunderbay_soc_ctl_map,
+	.pdata = &sdhci_arasan_thunderbay_pdata,
+	.clk_ops = &arasan_clk_ops,
+};
+
 static const struct sdhci_pltfm_data sdhci_keembay_emmc_pdata = {
 	.ops = &sdhci_arasan_cqe_ops,
 	.quirks = SDHCI_QUIRK_CAP_CLOCK_BASE_BROKEN |
@@ -1231,6 +1253,10 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
 		.compatible = "intel,keembay-sdhci-5.1-sdio",
 		.data = &intel_keembay_sdio_data,
 	},
+	{
+		.compatible = "intel,thunderbay-sdhci-5.1",
+		.data = &sdhci_arasan_thunderbay_data,
+	},
 	/* Generic compatible below here */
 	{
 		.compatible = "arasan,sdhci-8.9a",
@@ -1582,7 +1608,8 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
 
 	if (of_device_is_compatible(np, "intel,keembay-sdhci-5.1-emmc") ||
 	    of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sd") ||
-	    of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sdio")) {
+	    of_device_is_compatible(np, "intel,keembay-sdhci-5.1-sdio") ||
+	    of_device_is_compatible(np, "intel,thunderbay-sdhci-5.1")) {
 		sdhci_arasan_update_clockmultiplier(host, 0x0);
 		sdhci_arasan_update_support64b(host, 0x0);
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
