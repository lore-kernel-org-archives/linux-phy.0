Return-Path: <SRS0=vk77=MM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 607CEC07E9B
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 11:42:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 28FEC610FB
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jul 2021 11:42:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 28FEC610FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Auep55xhENeP21FKiNWjPSkGT7V/ecT/BQH6e0WTFFU=; b=xttgbGoLeUe1Hm
	sAC1wD2U0UA94jaeidUs6RzVz/z+OrJjrH8Trwy4pF5msXdxoChJqFEvOq1AXVzYopYwe0Nwse1BN
	QyKx7JAgX75AxU7L8yLTAx89S8REHYq9Wf1G6uMlPbYB6eZJcf4GZ+Tnob3l2n++rDwjuDkEg/LsW
	w5UKySCMlW8Nusa2qBoAcqXjtOGzk6iCv5P8dTIfItwxdK1G+ICJotkWx4IhBif6GeWv3SynM+YeY
	PXR+AKaCOzKTv3dIaviwjSdsz0P25IuMkrQSyXxoLk3Gm2eFZuO6MYFXRdwdyfJWP1uRuuI5Gzwoz
	gYWas8Pphbr3pmb73UXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5o8g-00CgWf-Mu; Tue, 20 Jul 2021 11:42:18 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5o8F-00CgT1-T7; Tue, 20 Jul 2021 11:41:53 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10050"; a="272334085"
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="272334085"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 04:41:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,254,1620716400"; d="scan'208";a="510723733"
Received: from coresw01.iind.intel.com ([10.223.252.64])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jul 2021 04:41:44 -0700
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
Subject: =?utf-8?q?=5B=E2=80=9CPATCH=E2=80=9D=202/3=5D=20mmc=3A=20sdhci-of-arasan=3A=20Add=20intel=20Thunder=20Bay=20SOC=20support=20to=20the=20arasan=20eMMC=20driver?=
Date: Tue, 20 Jul 2021 17:11:32 +0530
Message-Id: <20210720114133.8936-3-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210720114133.8936-1-rashmi.a@intel.com>
References: <20210720114133.8936-1-rashmi.a@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_044152_033742_27B6C6C2 
X-CRM114-Status: GOOD (  12.35  )
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
