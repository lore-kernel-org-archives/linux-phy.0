Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A08B5C5DF81
	for <linux-phy@archiver.kernel.org>; Thu, 20 Aug 2026 14:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rkys2S9XntWFIxaGPrXPMjHj5s0DYJ2l1xnP4EunvBo=; b=Bz8XSjf5Bab/my
	hNpBnAN3X2Gm15vbKbohAfLCo284OicDnEQe9U9AhgYHGA4HLhsc5gRzTji+8JVc1TF6G5nNuiMmt
	HaejAW/oHltvxaTL8OgWTo/2t0AtqdD9KJlU2RwAHpWze7b+32CpYAqXbhiHpNNhcVwNM7HvcKmx5
	bGbEbsVZhiCOz5eU5rX45SfTmTEbCWs1dZMUikKrEhxWGMPVofWm0bJIVYIH2Ai8NKBMYD0O6zJfU
	jcGEUfZ9pDpkWmpI98snSjVT8+GBNMkx6Nv+6H4HWuUiFC2hG4QrCpqaGzjCTTe1e6GcAGacM31Bo
	X2/zc5SgJeyCO+mqveeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3Kz-0000000Beeg-1Q89;
	Thu, 20 Aug 2026 14:01:45 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3Ki-0000000BeQV-3Rbg
	for linux-phy@lists.infradead.org;
	Thu, 20 Aug 2026 14:01:30 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-4813ea321cdso749860f8f.1
        for <linux-phy@lists.infradead.org>; Thu, 20 Aug 2026 07:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787234487; x=1787839287; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jjaxkW/OOljfbKs/Hgq4W4DJoOyPrHgU6kH9d26E7Bc=;
        b=bWfBgdJ+kX+GuCWRk8Jm+6A7/z3IX+XUuRE5/agRK68yFfpkoq0dY5TQXg3mN5ZCAQ
         WTFBGALjl7wxCU8w5LEYJ5Beys2l0WyTWNIg+wzOY13MTklf2bB0UjnDR2qGxnVo6PyT
         pc0MiwohElJ5uof2VsnoojZxurYa0QyjT1S8FGFLE0auGPgFpMGLWQqWfYu7BfVsGwEk
         oHuz1B5fkMhhWBcXifYQnVqYWNjrQq18t5bl5BZdnzfYLGgEdDaKynTv97x6UkmGPqrT
         fbUAqHTdRB44UK+UHx4h4tgo136o6IkWgw7SxZO0zQVpohVoP1nwQPlkyEBPoyCLcnS6
         jAjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787234487; x=1787839287;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jjaxkW/OOljfbKs/Hgq4W4DJoOyPrHgU6kH9d26E7Bc=;
        b=H+a29xrh2ep0kdEYmNP7+Z897UL0xyWNSsQKsEBu+djWgLO2Y1TwpkJp4VM78OkiE9
         XwqQnKJeFCEWeSmhEZxLN3HY67ZKF6GHeClEiWkiADQjWpDEmX4oPQmzY0Gq74w1P1mP
         HXBdGTAqStNES/c3TIJipFkOCEEQ0ZFgUIXm51R6XyaQ+mUmE1O+AP+z1NqlUJNAGRK3
         BnXy62T06R6e81BlQTo3aAzVjSpoUaouklk308hcBsGfHs58nMDMYNiESQlvOlHtrBZO
         1h0oUrnWzWHZGqmQtq1Qh4FGsIrXlG4ltmDjMi5AN+b066uhNzMq8bNX0/jkEZL3AALV
         HdJQ==
X-Forwarded-Encrypted: i=1; AHgh+RpsaOegeCam8Yb2Z8Zi7x54mcfiSef3+kqOxbEOGwwGOUT1r/gbmEAhjaK9PjsnNaDSMwD/WRMhs8E=@lists.infradead.org
X-Gm-Message-State: AOJu0YzrQA7uujkIV63HFe3FsTZ2utTSWga7mEeBxkCIfwAJYpepaCT+
	DoDmtDLMfovifZzpqIKzpR1d3Nd/+gF80fRls48Vhb9jVIkwuepW3qcf
X-Gm-Gg: AR+sD10VKjKJl4oUlD5M1R4GinAPFhmOqIlWDsDFXM2w5iXyfz9zgzwPxOVvd4EpYsb
	FyPOiRn2tfC2M41U+EZFiW3M0ifZKzV11HuzCxkq3Y16ZY/Yr0Ry51zEKNq22NDBbxhdvqoIve3
	B2AFE2UWnOkKmbmZ874MrWbRVniH9LJb80ol4lP1FvVzfovzmDuHt8TvPoPCG7zPJZfkUj+WYPy
	Djbp2dGwlxKUDzItQF/qDVMkgTLR7ajO8gvUuSYFP0BdOJfI7AxaI+mTPYhocV7QKkxOaiCp4OO
	ShZiEpvuF2Qq3felAz4Z9r16yLOj3BnUFJdDEaCZA2dKSoTYME3MAu14CFZEgovacv9UaKqL1m6
	w3Aq6LQ/FZZQcYSM/Qqvx76uGBJ/YPP5EWcqOvR87VnhRk4RVgNoU4zuYzGwf+k2sfUKhTxjhbq
	aetE64qh/2QF4IqWb5YSKy8lg10CmQhbywXubgLhEP1O4TQ1bbR4kpALywUM1Ayw3Kk1/RlbEdE
	z6WTuBWKaTZfrGlEm4bsg8jag0RAO+vlF9GOxBLMIiV82Gkj+XScIL5+w==
X-Received: by 2002:a05:600c:810a:b0:499:59fd:dbfc with SMTP id 5b1f17b1804b1-499b06a5900mr69779915e9.1.1787234484906;
        Thu, 20 Aug 2026 07:01:24 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa0e473dsm137978275e9.15.2026.08.20.07.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2026 07:01:24 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Thu, 20 Aug 2026 16:01:10 +0200
Subject: [PATCH 3/4] phy: rockchip: phy-rockchip-inno-csidphy: add support
 for rk3576 variant
MIME-Version: 1.0
Message-Id: <20260820-rk3576-dphy-v1-3-70e25e8d5e78@gmail.com>
References: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
In-Reply-To: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787234481; l=2615;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=+wQnLUS1bzjWsYlZ2cICJ1ntSL4y9AaqokE1Tn/QJfw=;
 b=XRv4bYGUPy5NgXnknSaQfkAZF50U/hL3221UfrFWTjnlCf2d2GcHd/mP7Ahg+k/FZpJiTdbn1
 BCk8pOhvhK4CWsuTIuMT1WMnZ+fZOwGi0nmY4Yq5JBX+pTCoh8PJt+o
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_070128_876915_5921CAE1 
X-CRM114-Status: GOOD (  11.41  )
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

The two RK3576 MIPI CSI-2 DPHYs can be supported using the existing
phy-rockchip-inno-csidphy driver, the notable difference with the
RK3588 variant being that each PHY instance only has an APB reset
line.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-csidphy.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
index c79fb53d8ee5..24aefdcd6361 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
@@ -30,6 +30,7 @@
 #define RK3568_GRF_VI_CON0		0x0340
 #define RK3568_GRF_VI_CON1		0x0344
 
+#define RK3576_CSIDPHY_GRF_CON0		0x0000
 #define RK3588_CSIDPHY_GRF_CON0		0x0000
 
 /* PHY */
@@ -119,6 +120,12 @@ static const struct dphy_reg rk3568_grf_dphy_regs[] = {
 	[GRF_DPHY_CSIPHY_CLKLANE_EN] = PHY_REG(RK3568_GRF_VI_CON0, 1, 8),
 };
 
+static const struct dphy_reg rk3576_grf_dphy_regs[] = {
+	[GRF_DPHY_CSIPHY_FORCERXMODE] = PHY_REG(RK3576_CSIDPHY_GRF_CON0, 4, 0),
+	[GRF_DPHY_CSIPHY_DATALANE_EN] = PHY_REG(RK3576_CSIDPHY_GRF_CON0, 4, 4),
+	[GRF_DPHY_CSIPHY_CLKLANE_EN] = PHY_REG(RK3576_CSIDPHY_GRF_CON0, 1, 8),
+};
+
 static const struct dphy_reg rk3588_grf_dphy_regs[] = {
 	[GRF_DPHY_CSIPHY_FORCERXMODE] = PHY_REG(RK3588_CSIDPHY_GRF_CON0, 4, 0),
 	[GRF_DPHY_CSIPHY_DATALANE_EN] = PHY_REG(RK3588_CSIDPHY_GRF_CON0, 4, 4),
@@ -403,6 +410,17 @@ static const struct dphy_drv_data rk3568_mipidphy_drv_data = {
 	.resets_num = ARRAY_SIZE(rk3368_reset_names),
 };
 
+static const struct dphy_drv_data rk3576_mipidphy_drv_data = {
+	.pwrctl_offset = -1,
+	.ths_settle_offset = RK3568_CSIDPHY_CLK_WR_THS_SETTLE,
+	.calib_offset = RK3568_CSIDPHY_CLK_CALIB_EN,
+	.hsfreq_ranges = rk1808_mipidphy_hsfreq_ranges,
+	.num_hsfreq_ranges = ARRAY_SIZE(rk1808_mipidphy_hsfreq_ranges),
+	.grf_regs = rk3576_grf_dphy_regs,
+	.resets = rk3368_reset_names,
+	.resets_num = ARRAY_SIZE(rk3368_reset_names),
+};
+
 static const struct dphy_drv_data rk3588_mipidphy_drv_data = {
 	.pwrctl_offset = -1,
 	.ths_settle_offset = RK3568_CSIDPHY_CLK_WR_THS_SETTLE,
@@ -435,6 +453,10 @@ static const struct of_device_id rockchip_inno_csidphy_match_id[] = {
 		.compatible = "rockchip,rk3568-csi-dphy",
 		.data = &rk3568_mipidphy_drv_data,
 	},
+	{
+		.compatible = "rockchip,rk3576-csi-dphy",
+		.data = &rk3576_mipidphy_drv_data,
+	},
 	{
 		.compatible = "rockchip,rk3588-csi-dphy",
 		.data = &rk3588_mipidphy_drv_data,

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
