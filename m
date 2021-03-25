Return-Path: <SRS0=4oE9=IX=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01FA0C433C1
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:41:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A515E61A25
	for <linux-phy@archiver.kernel.org>; Thu, 25 Mar 2021 16:41:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A515E61A25
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j+R1y5S4x6FpeYXoz3p2ku/nWtcOGSqeI/4iYC+s2oA=; b=XbeXkea2vTssj9qkQjafFHbpG
	peuvlUKyksh+gZt+vGbX+G5RC2QdmSZ6jP5cnq1TGFX8tAh9vgb0JWc8oZG3VkArCZIQYp6eRWaxt
	ujE882lw9RURcenr2ErvOMbdvEJw19AmrTCOU38csjuS3jusxa5PmuSZtSy76Lcrn6yOqx1dWSXN0
	TIVbbaEiFkhRQ0ZuseIyxjbiQhKe7AnmQaHIQnpA7vABfiIx74TRfWF8I6ICoIaj7wMB8yytNKYaG
	EkdNMw0siTgz4n6gQgPR9s5wKQSmFulOw8z2SxRJKrHAKFf1yYU42JcnGz/LPbIMIps8eq0o26Vvg
	rBr+Ay8Vw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPT2o-001qMc-P0; Thu, 25 Mar 2021 16:41:14 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPT2l-001qMH-6P
 for linux-phy@lists.infradead.org; Thu, 25 Mar 2021 16:41:13 +0000
Received: by mail-wm1-x329.google.com with SMTP id
 b2-20020a7bc2420000b029010be1081172so1552256wmj.1
 for <linux-phy@lists.infradead.org>; Thu, 25 Mar 2021 09:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tl+/f6WBFGlmAJ8aIGRC63W4tU1XCz5OC6vf2oAyFwc=;
 b=KclB8RfUv1B0+s/Aq9d6LDmYLJQ+g7chyt+f1uNO4St/2aDKsnSVqKTRICaSRxBOlp
 LkJHl2Ewy1p+NGPNAe0MpXwjytRJaE7VNtOYZiQvsi17zWehd5gqh7kBHeqZaTxMKnY0
 UdYqVVFY6HKsjWVAWfh8dbdtgjTjOP8tHBbF3d7G1RHMZEIoGaMscO61Au2HtM7OwwlH
 zag/2zuctEP9sTWHz7JBw0GyoCpV0XGzj1X50kvROIsp7cqK4vBTAVpYpjk+CoTOEW96
 G7h48vrCxgurglrI4kgnA7RVxn4cdp9tx21ayA4tKH4d7irjJqd02mVKJ/uBFnYD5FTt
 zZOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tl+/f6WBFGlmAJ8aIGRC63W4tU1XCz5OC6vf2oAyFwc=;
 b=TaU1EJOio8umPkFoYCaXdSJwd8palOCppxMC37TgMQIKsO3qXmn1ODSZEI7mWqgoVA
 wY1IzGbjJZU/avgYh4337Vfg06Nb27AObDcGA9c2w9xnWyQlNHjSOawo1P8ARxYGjE31
 9++EdWwhb51mgcOoewVUgGWgyAO96wJJbTXSqFnpyQt5pgXtC6ks6JNK4h88M7YUvfIp
 3b3VMp/uoX3mX4GPvkPLo9oYJiAl+ixHH6VCqkMxbG4QgyDt0aFNlw0sa8PEs6hq/qSZ
 ymWNcJ9dMZTITW7aV/0A8Cl9GUC/D8c6Bk5QfUi9U/6z9GtFxljtrWf4QBNSaV4+KijD
 N5SA==
X-Gm-Message-State: AOAM530sKTsQubhyidpJq9H5lqDYoZdcEcYcsnnFyW9i0LaiNPAK9KIV
 VtMDFE44Ci7OPrfmlCOQQGw=
X-Google-Smtp-Source: ABdhPJy0KdWUyF30nlp+OU7CCK8byVoUZ8t70G/6DvaXQXbqGc9ubh+0Kntdvs/tqca5cRqFQnnVTQ==
X-Received: by 2002:a1c:4e07:: with SMTP id g7mr9031309wmh.29.1616690470611;
 Thu, 25 Mar 2021 09:41:10 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id s83sm7497577wms.16.2021.03.25.09.41.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 09:41:04 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Mathias Nyman <mathias.nyman@intel.com>, JC Kuo <jckuo@nvidia.com>,
 Jon Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: [PATCH v8 07/13] soc/tegra: pmc: Provide USB sleepwalk register map
Date: Thu, 25 Mar 2021 17:40:51 +0100
Message-Id: <20210325164057.793954-8-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210325164057.793954-1-thierry.reding@gmail.com>
References: <20210325164057.793954-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_164111_337421_70B77A81 
X-CRM114-Status: GOOD (  18.24  )
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

From: JC Kuo <jckuo@nvidia.com>

This commit implements a register map which grants USB (UTMI and HSIC)
sleepwalk registers access to USB PHY drivers. The USB sleepwalk logic
is in PMC hardware block but USB PHY drivers have the best knowledge
of proper programming sequence.

Signed-off-by: JC Kuo <jckuo@nvidia.com>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 drivers/soc/tegra/pmc.c | 94 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
index df9a5ca8c99c..a619a23f9592 100644
--- a/drivers/soc/tegra/pmc.c
+++ b/drivers/soc/tegra/pmc.c
@@ -43,6 +43,7 @@
 #include <linux/seq_file.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
+#include <linux/regmap.h>
 
 #include <soc/tegra/common.h>
 #include <soc/tegra/fuse.h>
@@ -102,6 +103,9 @@
 
 #define PMC_PWR_DET_VALUE		0xe4
 
+#define PMC_USB_DEBOUNCE_DEL		0xec
+#define PMC_USB_AO			0xf0
+
 #define PMC_SCRATCH41			0x140
 
 #define PMC_WAKE2_MASK			0x160
@@ -133,6 +137,13 @@
 #define IO_DPD2_STATUS			0x1c4
 #define SEL_DPD_TIM			0x1c8
 
+#define PMC_UTMIP_UHSIC_TRIGGERS	0x1ec
+#define PMC_UTMIP_UHSIC_SAVED_STATE	0x1f0
+
+#define PMC_UTMIP_TERM_PAD_CFG		0x1f8
+#define PMC_UTMIP_UHSIC_SLEEP_CFG	0x1fc
+#define PMC_UTMIP_UHSIC_FAKE		0x218
+
 #define PMC_SCRATCH54			0x258
 #define  PMC_SCRATCH54_DATA_SHIFT	8
 #define  PMC_SCRATCH54_ADDR_SHIFT	0
@@ -145,8 +156,18 @@
 #define  PMC_SCRATCH55_CHECKSUM_SHIFT	16
 #define  PMC_SCRATCH55_I2CSLV1_SHIFT	0
 
+#define  PMC_UTMIP_UHSIC_LINE_WAKEUP	0x26c
+
+#define PMC_UTMIP_BIAS_MASTER_CNTRL	0x270
+#define PMC_UTMIP_MASTER_CONFIG		0x274
+#define PMC_UTMIP_UHSIC2_TRIGGERS	0x27c
+#define PMC_UTMIP_MASTER2_CONFIG	0x29c
+
 #define GPU_RG_CNTRL			0x2d4
 
+#define PMC_UTMIP_PAD_CFG0		0x4c0
+#define PMC_UTMIP_UHSIC_SLEEP_CFG1	0x4d0
+#define PMC_UTMIP_SLEEPWALK_P3		0x4e0
 /* Tegra186 and later */
 #define WAKE_AOWAKE_CNTRL(x) (0x000 + ((x) << 2))
 #define WAKE_AOWAKE_CNTRL_LEVEL (1 << 3)
@@ -334,6 +355,7 @@ struct tegra_pmc_soc {
 	const struct pmc_clk_init_data *pmc_clks_data;
 	unsigned int num_pmc_clks;
 	bool has_blink_output;
+	bool has_usb_sleepwalk;
 };
 
 /**
@@ -2443,6 +2465,67 @@ static void tegra_pmc_clock_register(struct tegra_pmc *pmc,
 			 err);
 }
 
+static const struct regmap_range pmc_usb_sleepwalk_ranges[] = {
+	regmap_reg_range(PMC_USB_DEBOUNCE_DEL, PMC_USB_AO),
+	regmap_reg_range(PMC_UTMIP_UHSIC_TRIGGERS, PMC_UTMIP_UHSIC_SAVED_STATE),
+	regmap_reg_range(PMC_UTMIP_TERM_PAD_CFG, PMC_UTMIP_UHSIC_FAKE),
+	regmap_reg_range(PMC_UTMIP_UHSIC_LINE_WAKEUP, PMC_UTMIP_UHSIC_LINE_WAKEUP),
+	regmap_reg_range(PMC_UTMIP_BIAS_MASTER_CNTRL, PMC_UTMIP_MASTER_CONFIG),
+	regmap_reg_range(PMC_UTMIP_UHSIC2_TRIGGERS, PMC_UTMIP_MASTER2_CONFIG),
+	regmap_reg_range(PMC_UTMIP_PAD_CFG0, PMC_UTMIP_UHSIC_SLEEP_CFG1),
+	regmap_reg_range(PMC_UTMIP_SLEEPWALK_P3, PMC_UTMIP_SLEEPWALK_P3),
+};
+
+static const struct regmap_access_table pmc_usb_sleepwalk_table = {
+	.yes_ranges = pmc_usb_sleepwalk_ranges,
+	.n_yes_ranges = ARRAY_SIZE(pmc_usb_sleepwalk_ranges),
+};
+
+static int tegra_pmc_regmap_readl(void *context, unsigned int offset, unsigned int *value)
+{
+	struct tegra_pmc *pmc = context;
+
+	*value = tegra_pmc_readl(pmc, offset);
+	return 0;
+}
+
+static int tegra_pmc_regmap_writel(void *context, unsigned int offset, unsigned int value)
+{
+	struct tegra_pmc *pmc = context;
+
+	tegra_pmc_writel(pmc, value, offset);
+	return 0;
+}
+
+static const struct regmap_config usb_sleepwalk_regmap_config = {
+	.name = "usb_sleepwalk",
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.fast_io = true,
+	.rd_table = &pmc_usb_sleepwalk_table,
+	.wr_table = &pmc_usb_sleepwalk_table,
+	.reg_read = tegra_pmc_regmap_readl,
+	.reg_write = tegra_pmc_regmap_writel,
+};
+
+static int tegra_pmc_regmap_init(struct tegra_pmc *pmc)
+{
+	struct regmap *regmap;
+	int err;
+
+	if (pmc->soc->has_usb_sleepwalk) {
+		regmap = devm_regmap_init(pmc->dev, NULL, pmc, &usb_sleepwalk_regmap_config);
+		if (IS_ERR(regmap)) {
+			err = PTR_ERR(regmap);
+			dev_err(pmc->dev, "failed to allocate register map (%d)\n", err);
+			return err;
+		}
+	}
+
+	return 0;
+}
+
 static int tegra_pmc_probe(struct platform_device *pdev)
 {
 	void __iomem *base;
@@ -2548,6 +2631,10 @@ static int tegra_pmc_probe(struct platform_device *pdev)
 	if (err)
 		goto cleanup_restart_handler;
 
+	err = tegra_pmc_regmap_init(pmc);
+	if (err < 0)
+		goto cleanup_restart_handler;
+
 	err = tegra_powergate_init(pmc, pdev->dev.of_node);
 	if (err < 0)
 		goto cleanup_powergates;
@@ -2706,6 +2793,7 @@ static const struct tegra_pmc_soc tegra20_pmc_soc = {
 	.pmc_clks_data = NULL,
 	.num_pmc_clks = 0,
 	.has_blink_output = true,
+	.has_usb_sleepwalk = false,
 };
 
 static const char * const tegra30_powergates[] = {
@@ -2764,6 +2852,7 @@ static const struct tegra_pmc_soc tegra30_pmc_soc = {
 	.pmc_clks_data = tegra_pmc_clks_data,
 	.num_pmc_clks = ARRAY_SIZE(tegra_pmc_clks_data),
 	.has_blink_output = true,
+	.has_usb_sleepwalk = false,
 };
 
 static const char * const tegra114_powergates[] = {
@@ -2818,6 +2907,7 @@ static const struct tegra_pmc_soc tegra114_pmc_soc = {
 	.pmc_clks_data = tegra_pmc_clks_data,
 	.num_pmc_clks = ARRAY_SIZE(tegra_pmc_clks_data),
 	.has_blink_output = true,
+	.has_usb_sleepwalk = false,
 };
 
 static const char * const tegra124_powergates[] = {
@@ -2932,6 +3022,7 @@ static const struct tegra_pmc_soc tegra124_pmc_soc = {
 	.pmc_clks_data = tegra_pmc_clks_data,
 	.num_pmc_clks = ARRAY_SIZE(tegra_pmc_clks_data),
 	.has_blink_output = true,
+	.has_usb_sleepwalk = true,
 };
 
 static const char * const tegra210_powergates[] = {
@@ -3059,6 +3150,7 @@ static const struct tegra_pmc_soc tegra210_pmc_soc = {
 	.pmc_clks_data = tegra_pmc_clks_data,
 	.num_pmc_clks = ARRAY_SIZE(tegra_pmc_clks_data),
 	.has_blink_output = true,
+	.has_usb_sleepwalk = true,
 };
 
 #define TEGRA186_IO_PAD_TABLE(_pad)                                          \
@@ -3214,6 +3306,7 @@ static const struct tegra_pmc_soc tegra186_pmc_soc = {
 	.pmc_clks_data = NULL,
 	.num_pmc_clks = 0,
 	.has_blink_output = false,
+	.has_usb_sleepwalk = false,
 };
 
 #define TEGRA194_IO_PAD_TABLE(_pad)                                              \
@@ -3347,6 +3440,7 @@ static const struct tegra_pmc_soc tegra194_pmc_soc = {
 	.pmc_clks_data = NULL,
 	.num_pmc_clks = 0,
 	.has_blink_output = false,
+	.has_usb_sleepwalk = false,
 };
 
 static const struct tegra_pmc_regs tegra234_pmc_regs = {
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
