Return-Path: <SRS0=cVk+=K5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B9DFC47082
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 18:23:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E9F21613B8
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jun 2021 18:23:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E9F21613B8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tB0hlXudtBLqqUpBsk/j/LEZCGyEN3ErVXTzJob4tS4=; b=iIeBl+qw8cZIQU
	E/dShnAXZpAlbUiDyAJAZRZ4s/lHF+Ne3Ij+7PPCFvt9K8KGNwogPs3NMvzk8megGSM+KgdvIDJ6o
	woc/paXmyJ9ce6QYbKqRA00Vlaoe1J0uAey7jZtC8CfN8yYGecFQuqx9fZkcCLw7SOsVWGUFlIW21
	R7G0YffH29cKm0HZj3hfLYsoUTSResOrcACXX1vADjh2s3xj9Qw/aaILZb04vsgLpUAd4PnO60DIH
	/uo0QoAf2gGOkHZrwD3cR16dJ3mF1AYuVoA5EhCgwE+WpUkSCn/qrSkih5Sjd2SQ/r26tOhk6zaKO
	fgc48Lp7iC/Sw/JaUwkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1los0A-00AA5S-Ez; Thu, 03 Jun 2021 18:23:30 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lorzd-00A9hs-55; Thu, 03 Jun 2021 18:22:58 +0000
IronPort-SDR: xXqIoK6ltlRSeRSegmgRnn5bzVDZ1+OaFBzlUyQHnCBhcYPDl+dH1wEfAPG8nHC0lggSvl8Z89
 b7rW7UXgVcpA==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="202257958"
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="202257958"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 11:22:54 -0700
IronPort-SDR: cYBAxOZcDF9xlY6icljnyITeKlTh5nZ6LDxGSPBDxMzt+DDQ6GzKjE57deaB00G9OORiewQLvy
 CTq2bW/3vf5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,246,1616482800"; d="scan'208";a="636326865"
Received: from coresw01.iind.intel.com ([10.223.252.64])
 by fmsmga005.fm.intel.com with ESMTP; 03 Jun 2021 11:22:47 -0700
From: rashmi.a@intel.com
To: linux-drivers-review-request@eclists.intel.com, michal.simek@xilinx.com,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kishon@ti.com, vkoul@kernel.org, andriy.shevchenko@linux.intel.com,
 linux-phy@lists.infradead.org
Cc: mgross@linux.intel.com, kris.pan@linux.intel.com, furong.zhou@intel.com,
 mallikarjunappa.sangannavar@intel.com, adrian.hunter@intel.com,
 mahesh.r.vaidya@intel.com, nandhini.srikandan@intel.com,
 lakshmi.bai.raja.subramanian@intel.com, rashmi.a@intel.com
Subject: =?utf-8?q?=5B=E2=80=9CPATCH=E2=80=9D=201/2=5D=20mmc=3A=20sdhci-of-arasan=3A=20Use=20clock-frequency=20property=20to=20update=20clk=5Fxin?=
Date: Thu,  3 Jun 2021 23:52:41 +0530
Message-Id: <20210603182242.25733-2-rashmi.a@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210603182242.25733-1-rashmi.a@intel.com>
References: <20210603182242.25733-1-rashmi.a@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210603_112257_260812_D304FD70 
X-CRM114-Status: GOOD (  11.16  )
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

If clock-frequency property is set and it is not the same as the current
clock rate of clk_xin(base clock frequency), set clk_xin to use the
provided clock rate.

Signed-off-by: Rashmi A <rashmi.a@intel.com>
Reviewed-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 839965f7c717..0e7c07ed9690 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -1542,6 +1542,8 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
 		}
 	}
 
+	sdhci_get_of_property(pdev);
+
 	sdhci_arasan->clk_ahb = devm_clk_get(dev, "clk_ahb");
 	if (IS_ERR(sdhci_arasan->clk_ahb)) {
 		ret = dev_err_probe(dev, PTR_ERR(sdhci_arasan->clk_ahb),
@@ -1561,14 +1563,22 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
 		goto err_pltfm_free;
 	}
 
+	/* If clock-frequency property is set, use the provided value */
+	if (pltfm_host->clock &&
+	    pltfm_host->clock != clk_get_rate(clk_xin)) {
+		ret = clk_set_rate(clk_xin, pltfm_host->clock);
+		if (ret) {
+			dev_err(&pdev->dev, "Failed to set SD clock rate\n");
+			goto clk_dis_ahb;
+		}
+	}
+
 	ret = clk_prepare_enable(clk_xin);
 	if (ret) {
 		dev_err(dev, "Unable to enable SD clock.\n");
 		goto clk_dis_ahb;
 	}
 
-	sdhci_get_of_property(pdev);
-
 	if (of_property_read_bool(np, "xlnx,fails-without-test-cd"))
 		sdhci_arasan->quirks |= SDHCI_ARASAN_QUIRK_FORCE_CDTEST;
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
