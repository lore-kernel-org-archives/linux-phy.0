Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF50606A321
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 14:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gr73ItlS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=abJHWcGg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=URW5V25awnVay0m3hCwzlMpBdMFbpHE069D4IKKdIbo=; b=gr73ItlSYDKnITMwk3E7VmFoir
	xi3l2nrXzP8cJa0VPOxU6KDbL0CKyWxBkE6aW5diLFWaarz+FHMBW2h//XfbRuq5gyXTUc+EnB9n6
	+ZcIzkpTNHSsHLIeNDibM0XqH42J6dTJbfjMzrlerXGXMkKLhY+qtjiBr39YxatJStO8nMg0Q4jR9
	4V9p7iipho/yZZsIgUFLhMt2Yhq5TReBEJp1eOV1vA7/+CgjkqQ/B28yrApG/35Si4shSkSWYu2C1
	Z/Mny/Oyvs6MLSOzEE7dsn9u6QQzhV7Ser8v9TS7SU1aOtAc9vdSipRl6SlVIoJkBFQgwd/z287Ew
	UiqbtsTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEQ2-0000000AGWL-0Oz5;
	Wed, 25 Nov 2026 14:56:22 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWEPo-0000000AGMZ-2VEV
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 14:56:13 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-4aa5833c263so5655376f8f.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795618566; x=1796223366; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YYfMAbauZ3UyOtNrmZ1+mkqTtdWQRKsrJ13JpeqSsZQ=;
        b=abJHWcGgLu2cIn890TjMq7tcOfBAOXrPdohmoCH8z6lt0VL91I5SVsxuUhq5Tqhr4x
         HVh1ecnD9fv+rj/5wZTwL3QoD8edbxZ//qEwFuJMKlwLtZS9U2QwVfmiCfSorthrfZhv
         eHZ7GLHk0aRJucA0rOhJy15+bxCLt6d9iPt7omLOgYzzl9vTlj5rHnYM+f53AToYhRca
         SSSRl+BnQE6BAoYjziOX9HDSyK8+/BrV7D/CsSOGKpSm0UPDvaoINuWGpECHhNbN0DVw
         in/rJT+dtKtvD0KdDMLmyAOMGqO7ZXpB0nUeqnMi8y/bpLbxjwX5IlfxnE7kTFui+IHt
         hJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795618566; x=1796223366;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YYfMAbauZ3UyOtNrmZ1+mkqTtdWQRKsrJ13JpeqSsZQ=;
        b=YKBlxCyCdUjZsRktrDANSQR3aU36V5wJzG25ItuZh76K7fADkv83EE6ffRv+zmvpqK
         +0Q1FWJboXq7lpD9v89GTTFnUfdkN8dJ+p3Z4fpLcRhEOticdd91yZuxMvbdo5zLQkWO
         /sWY3JkPHLoDJclVUcfohDKRbrMe3v0o2sdRp8tznFwj+e4lD6v/Tbx4h4JKzJPN3fXt
         PZQJvK9OWVZaQuq7mwv2h0ecnnu8Ue7cW6ebnBIJqD+rLITMcsPtEtuL1eTWSp6DPPLu
         evJwZkhGIyg8WdG45wcNxH4v+EwuWKHBFLJ47R98OaQa/PiQJRUjqM3IbRGjSKiHbZ8D
         wVmw==
X-Forwarded-Encrypted: i=1; AL+hErG/0nNSCu6noezIDchI+0du9TyrsDY9huwyfexne5xQWpwan3934Fh96lfhB4RjQF3m58Ax2w1Vvbk=@lists.infradead.org
X-Gm-Message-State: APuU4Z87RAm1jI8P3xODJaFAvsdJ/BRwu/Qk+22rziER2fMkFoaam4Ar
	nPP7EpkpaJ2x4ik1RcuS6yXIF05frv5PJLGsGJ5hIIFIGS9zhcadRXy/
X-Gm-Gg: AZFdTZd2puf6F++GCz5q8C+4X9OEmg7Qp5+Xuwx2lxW70pNjnOpYuIMU1ZwGdWzsbUa
	5GjbEUHuAiO8YFyVVzU91b0lLgblm/AWhhfWzQs7HIZHkneNmkwLDIhjIAHWAzmg2IbiFLvVU5i
	qYCS21mUkleVsWdnWBfsKlSEjjToBupYuZg0i5I/4mucjKgHj81GZtN5DKoeCrDq3hYhvCZQtJl
	7RVkj5eGhNY8jIP2KjGgyv1zKZuTFbaGjX45t7FlS5C2GzMg1MXccIJ1Nxuk23/LjLaqMSiLhkz
	fCTAz2AdHiqalqk+u7ZKl4oqo87XBHIlWToax7hBeb5CMDnO3pmPzzoxX7fBFKdjDtwexJ1qoPO
	fl7lBETM/JZASPWAPYYzKcMQpfmExhCvd+j93XkkcBbsX5iGnUSnUOVC6dO+BEAmIQfQ4OxH6X0
	hUSe8cyq/Hh0xd5iwluyOIDLEpysOkReEZqUGbOKWFwPMb4CzA93Wb8eADVIQUvvag3PTYTGS8O
	KNCOAGrqrytY6E67CneIg1RYZu4yJ0vglPLC7+Q0JpaidSJkccRfc+JwbOHFHTY6txv+t/4kaf3
	FZT8TAQZCvR/bsUPxlz7ywvKmlm3cOVJoyPnFNsSxJB1piMZhyEYeBIjjULPLDtQQU6rTAKlLG0
	gAiUPuGbazCJN3jWpggQbvrN70hAMlXYjtg==
X-Received: by 2002:a5d:5f93:0:b0:4a5:33ad:871a with SMTP id ffacd0b85a97d-4aba56f470cmr35093956f8f.0.1795618566479;
        Wed, 25 Nov 2026 06:56:06 -0800 (PST)
Received: from DavidArch.internal (catv-78-139-0-46.catv.fixed.one.hu. [78.139.0.46])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-4ab6b10b2c9sm36036139f8f.31.2026.11.25.06.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 06:56:05 -0800 (PST)
From: David Virag <virag.david003@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>
Cc: linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	David Virag <virag.david003@gmail.com>,
	Umer Uddin <umer.uddin@mentallysanemainliners.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/5] phy: exynos5-usbdrd: support Exynos7885 USB PHY
Date: Wed, 25 Nov 2026 15:54:54 +0100
Message-ID: <20261125145458.2594179-4-virag.david003@gmail.com>
X-Mailer: git-send-email 2.56.1
In-Reply-To: <20261125145458.2594179-1-virag.david003@gmail.com>
References: <20261125145458.2594179-1-virag.david003@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_065608_681055_AD2CBD49 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Exynos7885 SoC has an Exynos USB PHY that theoretically supports
USB3 SuperSpeed, but all known devices using it only have USB2 and the
vendor driver has USB3 function stubbed out, so we'll only support USB2.

Apart from this mysterius USB3 capability, it's the closest to Exynos850
out of those supported. Unlike other SoCs though, this one doesn't set
the reference clock by default, so we have to set it manually.
For this, create a set_ref_clk_rate property in drvdata that can be set
to a predefined value to set the clockrate to.

Co-developed-by: Umer Uddin <umer.uddin@mentallysanemainliners.org>
Signed-off-by: Umer Uddin <umer.uddin@mentallysanemainliners.org>
Signed-off-by: David Virag <virag.david003@gmail.com>
Tested-by: Umer Uddin <umer.uddin@mentallysanemainliners.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes in v2:
 - Use unsigned long for set_ref_clk_rate
 - (from Umer Uddin:) Error-check clk_set_rate, and fail if returns an
   error.
 - Add Umer Uddin's Co-developed-by: tag for his improvement.

Changes in v3:
 - Add Tested-by and Acked-by tags

 drivers/phy/samsung/phy-exynos5-usbdrd.c    | 26 +++++++++++++++++++++
 include/linux/soc/samsung/exynos-regs-pmu.h |  3 +++
 2 files changed, 29 insertions(+)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index 087d552eb511..77bba791212d 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -483,6 +483,7 @@ struct exynos5_usbdrd_phy_drvdata {
 	int n_clks;
 	const char * const *core_clk_names;
 	int n_core_clks;
+	unsigned long set_ref_clk_rate;
 	const char * const *regulator_names;
 	int n_regulators;
 	u32 pmu_offset_usbdrd0_phy;
@@ -1847,6 +1848,15 @@ static int exynos5_usbdrd_phy_clk_handle(struct exynos5_usbdrd_phy *phy_drd)
 			return dev_err_probe(phy_drd->dev, -ENODEV,
 					     "failed to find phy reference clock\n");
 
+		/* Some SoCs (e.g. Exynos7885) leave the reference clock unset */
+		if (phy_drd->drv_data->set_ref_clk_rate) {
+			ret = clk_set_rate(ref_clk,
+					   phy_drd->drv_data->set_ref_clk_rate);
+			if (ret)
+				return dev_err_probe(phy_drd->dev, ret,
+						     "failed to set ref clock rate\n");
+		}
+
 		ref_rate = clk_get_rate(ref_clk);
 		ret = exynos5_rate_to_clk(ref_rate, &phy_drd->extrefclk);
 		if (ret)
@@ -2095,6 +2105,19 @@ static const struct exynos5_usbdrd_phy_drvdata exynos7870_usbdrd_phy = {
 	.n_regulators		= ARRAY_SIZE(exynos5_regulator_names),
 };
 
+static const struct exynos5_usbdrd_phy_drvdata exynos7885_usbdrd_phy = {
+	.phy_cfg                = phy_cfg_exynos850,
+	.phy_ops                = &exynos850_usbdrd_phy_ops,
+	.pmu_offset_usbdrd0_phy = EXYNOS7885_PHY_CTRL_USB20,
+	.clk_names		= exynos5_clk_names,
+	.n_clks			= ARRAY_SIZE(exynos5_clk_names),
+	.core_clk_names		= exynos5_core_clk_names,
+	.n_core_clks		= ARRAY_SIZE(exynos5_core_clk_names),
+	.regulator_names	= exynos5_regulator_names,
+	.n_regulators		= ARRAY_SIZE(exynos5_regulator_names),
+	.set_ref_clk_rate       = 50 * MHZ,
+};
+
 static const struct exynos5_usbdrd_phy_drvdata exynos850_usbdrd_phy = {
 	.phy_cfg		= phy_cfg_exynos850,
 	.phy_ops		= &exynos850_usbdrd_phy_ops,
@@ -2929,6 +2952,9 @@ static const struct of_device_id exynos5_usbdrd_phy_of_match[] = {
 	}, {
 		.compatible = "samsung,exynos7870-usbdrd-phy",
 		.data = &exynos7870_usbdrd_phy
+	}, {
+		.compatible = "samsung,exynos7885-usbdrd-phy",
+		.data = &exynos7885_usbdrd_phy
 	}, {
 		.compatible = "samsung,exynos850-usbdrd-phy",
 		.data = &exynos850_usbdrd_phy
diff --git a/include/linux/soc/samsung/exynos-regs-pmu.h b/include/linux/soc/samsung/exynos-regs-pmu.h
index db8a7ca81080..73d9c509dae6 100644
--- a/include/linux/soc/samsung/exynos-regs-pmu.h
+++ b/include/linux/soc/samsung/exynos-regs-pmu.h
@@ -665,6 +665,9 @@
 /* For Exynos990 */
 #define EXYNOS990_PHY_CTRL_USB20				(0x72C)
 
+/* For Exynos7885 */
+#define EXYNOS7885_PHY_CTRL_USB20				(0x674)
+
 /* For Exynos7870 */
 #define EXYNOS7870_MIPI_PHY_CONTROL0				(0x070c)
 #define EXYNOS7870_MIPI_PHY_CONTROL1				(0x0714)
-- 
2.56.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
