Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF0F3CCA479
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOGKJelx1VnrYevnTvXLIn+12nULJSVm8h7PD1Ve6dU=; b=jquYooKlOZ6mGX
	aU8rlVcsWLTblVoP6oJn5wEXvDzc5Gshsdt0jhwE0wEj60AyTBHTn80wMuBaq422AuaQ10p07BMQN
	cQWWNalQf6BbrWAMM5Yz+AOJK31TDxbWB0/7UlDGl77KsLz1ueXc1SYjTKM3xKagJKMkXJwUTS/aj
	n2YddVRhptv79c+S6UbfpC3LybKTOP427ei4IPDGbiIRQEk7ivk6NG9FYWKBO4nh0qjO9TvUKPwtc
	MxArcsR22A2qSAUW0XqrAinaaAF2I2H6LGoB17U+GvKFhr3gbkGwuoHEMnZG3XLv0NPiDSmabMg3d
	urtGXbtz4hpydaiuVVgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aaw-006Drt-E4; Tue, 28 Jun 2022 12:45:30 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aat-006DmB-VH
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:45:29 +0000
Received: by mail-ej1-x635.google.com with SMTP id h23so25450227ejj.12
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 05:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=X+4C91pBPuruAy2SRc0UhNyMy5LTHEOk4TXkwRVqGsA=;
        b=DSh1qQ0rIGt4CcyCfN6ZANz2B9InOMMi8Y8ooiZhU/J2JSd6dMIR4sTY2nB1Z83mDM
         21c2NAjI9GWt5JSsAxSVz6lHVn7s1LX9G9byRpY03+c/i7jyxysdlN3QmkLwUe3CIsmY
         CRVpalQd5kQUqUp+/w/o1svh2ZcshK7VEC77pWrApzObYapwgR7nxJTEc6s1p8jsIgRl
         qgHk8TPwFpTGUt6ynhNvD5AZ1cfUS4AQRgIKIDe0VtHBy8cn4XLr5Mq59SQJML3tFWny
         howy9kNXIDizrIwmYrQNqtBXM8OMfEFCv7sGq4gCfUbH+ufj/7vjhC2ScSnZlxWZJD12
         ztQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=X+4C91pBPuruAy2SRc0UhNyMy5LTHEOk4TXkwRVqGsA=;
        b=DWsTSB33HR3nNqzQCy13I6mwK6lHkdZrMXuK75Y9W/cQH9qJCpDoXiy2SeP3NaJ5a/
         WfsSI88SvYgD84OtsP6ktqry3cmCaJauerjWLxbL2xomk0L3/5PkGTmfhhWwP1rQtRJG
         J0G4LFVHF9tZJsdGZAmXHgh77a52CUE+FzzXdQNwvki2aC8Z4k1XZTcCK0joNo2NLMqJ
         HrQUrQwQ8sE/x1LnlqYUOfKcvmY0DgmaKx6pGnUvVr9HPhkyUUPI6ft5JpNQ12CPnKcC
         aYgoq2cCkDWPx+JVfqllt4IrOS+iqcGaNL/o+Ce/SBqntX9xhrK6e2D0dyeHkP6oBkGn
         2reQ==
X-Gm-Message-State: AJIora9WYoN08mqrB/wahCuGyXWci3X2W1M+sR4SDNWNFIqh4HaONW19
	2IMe1gIJtk34oEhXbHvN9pZfpx4p+cU=
X-Google-Smtp-Source: AGRyM1tqzBvDQCUi6RRScG2xpFlt5U6tlV23lkx33B4FpNGHMgJQZEy49e5pO+76w3Lr/SNE+MEY6w==
X-Received: by 2002:a17:906:9b93:b0:722:f3e8:3f5e with SMTP id dd19-20020a1709069b9300b00722f3e83f5emr17953859ejc.65.1656420323128;
        Tue, 28 Jun 2022 05:45:23 -0700 (PDT)
Received: from localhost.localdomain (dynamic-095-114-061-215.95.114.pool.telefonica.de. [95.114.61.215])
        by smtp.googlemail.com with ESMTPSA id f13-20020a170906824d00b00726e108b566sm622871ejx.173.2022.06.28.05.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 05:45:22 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	p.zabel@pengutronix.de
Cc: linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	rtanwar@maxlinear.com,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v1 7/9] reset: intel: Use syscon_node_to_regmap on legacy SoCs
Date: Tue, 28 Jun 2022 14:44:39 +0200
Message-Id: <20220628124441.2385023-8-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_054528_037368_99F2623B 
X-CRM114-Status: GOOD (  16.40  )
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

Older Lantiq (called "legacy") SoCs the RCU registers have more than
just the reset controller registers. It additionally contains boot
media selection information, up to two USB2 PHYs and configuration for
various other peripherals (such as the PCIe PHY). use
syscon_node_to_regmap() to obtain the regmap on these SoCs.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/reset/Kconfig          |  3 ++-
 drivers/reset/reset-intel-gw.c | 29 +++++++++++++++++++----------
 2 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 68a5ea44612e..fb49c465078f 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -86,7 +86,8 @@ config RESET_INTEL_GW
 	bool "Intel Reset Controller Driver"
 	depends on X86 || LANTIQ || COMPILE_TEST
 	depends on OF && HAS_IOMEM
-	select REGMAP_MMIO
+	select REGMAP_MMIO if X86
+	select MFD_SYSCON if LANTIQ
 	help
 	  This enables the reset controller driver for Intel Gateway SoCs.
 	  Say Y to control the reset signals provided by reset controller.
diff --git a/drivers/reset/reset-intel-gw.c b/drivers/reset/reset-intel-gw.c
index 46ed7a693666..0bf7fe4e77ae 100644
--- a/drivers/reset/reset-intel-gw.c
+++ b/drivers/reset/reset-intel-gw.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/bitfield.h>
+#include <linux/mfd/syscon.h>
 #include <linux/init.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
@@ -170,7 +171,6 @@ static int intel_reset_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct device *dev = &pdev->dev;
 	struct intel_reset_data *data;
-	void __iomem *base;
 	u32 rb_id[3];
 	int ret;
 
@@ -182,15 +182,24 @@ static int intel_reset_probe(struct platform_device *pdev)
 	if (!data->soc_data)
 		return -ENODEV;
 
-	base = devm_platform_ioremap_resource(pdev, 0);
-	if (IS_ERR(base))
-		return PTR_ERR(base);
-
-	data->regmap = devm_regmap_init_mmio(dev, base,
-					     &intel_rcu_regmap_config);
-	if (IS_ERR(data->regmap)) {
-		dev_err(dev, "regmap initialization failed\n");
-		return PTR_ERR(data->regmap);
+	if (data->soc_data->legacy) {
+		data->regmap = syscon_node_to_regmap(dev->of_node);
+		if (IS_ERR(data->regmap))
+			return dev_err_probe(dev, PTR_ERR(data->regmap),
+					     "Failed to get regmap from syscon node\n");
+	} else {
+		void __iomem *base;
+
+		base = devm_platform_ioremap_resource(pdev, 0);
+		if (IS_ERR(base))
+			return PTR_ERR(base);
+
+		data->regmap = devm_regmap_init_mmio(dev, base,
+						     &intel_rcu_regmap_config);
+		if (IS_ERR(data->regmap)) {
+			dev_err(dev, "regmap initialization failed\n");
+			return PTR_ERR(data->regmap);
+		}
 	}
 
 	ret = device_property_read_u32_array(dev, "intel,global-reset", rb_id,
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
