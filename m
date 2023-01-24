Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 817ABC38142
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 05:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DRmiN589q94nmbfMX5RJZrTLhMw5bmglvWrrjQR+NFg=; b=14bXqWHUiNi6DV
	QpC0zSyNNVPPxPKR9Mxe3Zc6nvreF+zjQ/+HFl+NrkDu+9bT/ondCsRUwpGRb+1zG9YOrM7Q74mjN
	f6UrD3Y7OX+sJslnaKLINOQ1sbt5e+gfSJisktHxZ1woHHeQr/FqZnxX7vJBQgmdcIUDV0hKRDuYG
	oGCym5qky27FcxDWKCYBh9BeMbSE32X5kjQl3rPOJPTq0fFiVktihh/MJIeqGPqSawnEok71lWqWd
	JcNkkkhiQxTA3nr7kRIHnR4GxZfVnU5anjtR1F1AV9hpb9HYnJSUzjHAibbo1gpF5bI08RjiDHL+7
	0k52RGOenEDO0csjoDcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKC6x-002OL9-R4; Tue, 24 Jan 2023 05:44:47 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKC6n-002OIU-6Y; Tue, 24 Jan 2023 05:44:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1674539077; x=1706075077;
  h=from:to:cc:subject:date:message-id;
  bh=zj5C/0Dm3eXkZ7JXMjfdfRw3WwpyZ0x3VqRQ7J5XMRU=;
  b=JNN/2DsUvX2Yxuod5r7WcrwAOn4biQqzhwV4cHstv4sI3IiN0+3TKwvh
   buI938BsCpS93z/2AxlL1vrqlh00cJYLCHZ5iy90b6WeDQOeMG/5gkqGs
   GCJKvZsjHBUseVkvTnlnUm2YOgOa3yl6Urqsc5atKrtg03JjjSbzukrqb
   62IE2AFZuD9gjWxt9MoVeSGqDMHp+ni4UxUMiTbKmj7NZFZ4tNcfDEuIz
   yoyY+fu8Z/kZ7y+gT24EhgM45LINbvcuZqT+8T/8p8xIGGkLfo9jZVkbk
   3GfJEsDSGiL0wUbxf1vddYdi4QZmlAZbbfyBOQXMgfqlMrNn+SvDZib8N
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="305895473"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; 
   d="scan'208";a="305895473"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jan 2023 21:44:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="655307147"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; 
   d="scan'208";a="655307147"
Received: from coresw01.iind.intel.com ([10.106.46.194])
  by orsmga007.jf.intel.com with ESMTP; 23 Jan 2023 21:44:28 -0800
From: rashmi.a@intel.com
To: ulf.hansson@linaro.org,
	michal.simek@xilinx.com,
	linux-mmc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kishon@ti.com,
	vkoul@kernel.org,
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
Subject: [PATCH v1 1/4] Revert "mmc: sdhci-of-arasan: Add intel Thunder Bay SOC support to the arasan eMMC driver"
Date: Tue, 24 Jan 2023 11:14:24 +0530
Message-Id: <20230124054427.28808-1-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_214437_270011_3E7776C7 
X-CRM114-Status: GOOD (  10.52  )
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

This reverts commit 39013f09681341e8264dff633e70d43da84d579a.

Revert Thunder Bay specific code as the product got cancelled
and there are no end customers.

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
