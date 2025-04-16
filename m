Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A459C369C4
	for <linux-phy@archiver.kernel.org>; Wed, 16 Apr 2025 12:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nHhcoWTlatExTnzU3tnmhK/etrqF5mHUMAOV/hpFwvs=; b=H6QZO+O91jt2Ms
	IAYs2eUhpqQvKdzXC4Lt0mTmonqNqDi4xQIzVXeuaZ0mbck2k6el8/X0thWjss2Hlfm3bzZIBSbV7
	R8EYXSdniRt01Sgte2TXaV/OnCwQ0xLK9+mrk1HIoFrsaea+XvfDoIdTybjFVtn//ZU6z+vWJx6fI
	Cxz2dehCqBjr99lBmweCeNWX4/et51rl8WYlp3vvLZsqTjw7hYLMdLikSCbDXnyVwyE+QT0z+te2E
	8FloP3dwqTB/rJes7ksySqU2rt+GWZhY778YV4eqYJKk0JvNxTz23Kk1qFFea9TtSBWKvDBgJAw19
	i1st6Ft+kBe837INlGVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51lp-00000009UcH-1I6d;
	Wed, 16 Apr 2025 12:21:37 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u51VU-00000009R1W-0xV1
	for linux-phy@lists.infradead.org;
	Wed, 16 Apr 2025 12:04:45 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-223f4c06e9fso6024305ad.1
        for <linux-phy@lists.infradead.org>; Wed, 16 Apr 2025 05:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744805084; x=1745409884; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ie7hREUa4SMJAa/pZTbegFZ7KD0h8GRA9ZCVQg1tUQo=;
        b=nFbUiC3n9CRzpu5kVZE3uUOwD3DEt8cREH9z5BAz3b5G+BgLUF7ybPL5IcRlKzhAqH
         bL3A68sJO86/bk82YhRnmAzGopGvH5VslG1DDAvSNYDGw+7YplLKZpV5jS4vWt014Pjs
         PfEfKL1G4i82XZUbHQNwT8ZnYqWex0uFlTMkPwdCtx/lpqGcNfeCtK0Om3ckT7yk1H8d
         PpzLo7PiYt0F8ozYWLs8d4W498jLM7QctPXvh/6JQTWvOiFPjJoHF67NT7OXhpkeU5d2
         YzN/A0Dd3UGfHB4mAvhZMJPejh4WVyIf47Uw/OrJUm8JP3fdOn9EhQ7FUR/AMXwPUbjp
         W0PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744805084; x=1745409884;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ie7hREUa4SMJAa/pZTbegFZ7KD0h8GRA9ZCVQg1tUQo=;
        b=CKS6L0BquVgW7n39cqAB8IoG8ioDjvlJWXMGNNESN8cNAltUOglfY9hujiS9t+qQEM
         sy1D/dT42W/LqUEiiUbATTDJ714c4vUxjGCDTqQU70CF3foni+DujVp9mMRpAxPPTnoq
         q6lgINGNTJAM6DsgUA6xKRDIXmUimdnWnEGJdaYOGemtro2cfXr3X8hkI2rwhGgeckZc
         8zWGO31FvjDFkBiIWnXFnP5Qpiy/ygO/NqvSlj/qPZXUmUx+UsNDU9IZZfLgCVkfhlWT
         LoNGYp28WJCgE5u/Y/IcwqSkn7P2Qe/mhs86xDMkKmGqm+3BA0+tbL5VX07FSucI0rTP
         Crtw==
X-Forwarded-Encrypted: i=1; AJvYcCU4YdJ3qFbRRmT/l5WYWJ9o5OnFjvHFbYkjWYcyVYYyCkrz9IuMgcnsQ10NxsmC3FOL0sAtA8H51xk=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywz7LXT7wyJvR584JFrhnxvA4itmKZSpaYMJncgDodE8T558g4r
	iW90ocbs0jNnLYtM/ZnteHZVaHsq6hVy/FdkYUVpJkpdQj2vrMqq
X-Gm-Gg: ASbGnctj1DFmVmnN+2RxAJtQjwJNP0IhFaHr0T7To9HPAVFvCweOvOC2HB4fFQoHezE
	b5Fe+HQp1Gm34RTynnWg+25zTL5+Yjz5t7asn+Nw1byL9xnMrEBPUTWORS61RVwlkBJ9TesVM8/
	XPDuoPzBjEv2XwE1YjMbmmb6HdwnyfVp1X5w3wkKELBENcKuyuiFMm95Weg+nO+tDG2I5kzcJNe
	dl9x4eRXW4Jb+tUKgaecEmybCMxrz7Ii6uTLw+wPta1ly/n9CJ2JPhsnVqub6BCMb/kKR8oS5Tb
	jg3AG+rFRmJ3BAL+7MEDNKoJxi+OMCLFhh8qfESYc002nrQKLA==
X-Google-Smtp-Source: AGHT+IF3c77cgFMGhot+IttF6abeW9f9RiIxUS3EHqsIYXeT4jB4a6Vdk4WPQdSgQAWsR+Iaultg5w==
X-Received: by 2002:a17:903:188:b0:220:cfb7:56eb with SMTP id d9443c01a7336-22c35f1cd23mr19478865ad.26.1744805083546;
        Wed, 16 Apr 2025 05:04:43 -0700 (PDT)
Received: from nuvole.. ([144.202.86.13])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33febfb3sm12033385ad.259.2025.04.16.05.04.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 05:04:43 -0700 (PDT)
From: Pengyu Luo <mitltlatltl@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengyu Luo <mitltlatltl@gmail.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] phy: qualcomm: phy-qcom-eusb2-repeater: rework reg override handler
Date: Wed, 16 Apr 2025 20:02:01 +0800
Message-ID: <20250416120201.244133-3-mitltlatltl@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250416120201.244133-1-mitltlatltl@gmail.com>
References: <20250416120201.244133-1-mitltlatltl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_050444_268921_EA6F7ADD 
X-CRM114-Status: GOOD (  15.74  )
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

In downstream tree, many registers need to be overridden, it varies
from devices and platforms, with these registers getting more, adding
a handler for this is helpful.

Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
---
 .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 105 +++++++++++++++---
 1 file changed, 92 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 6bd1b3c75..a4b75e70e 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -68,12 +68,27 @@ struct eusb2_repeater_cfg {
 	int num_vregs;
 };
 
+struct tune {
+	const char * const tune_name;
+	const char * const host_tune_name;
+	enum eusb2_reg_layout init_tbl_idx;
+	u8 tune_reg;
+	u8 tune;
+	u8 host_tune;
+};
+
+struct tune_cfg {
+	struct tune *tune_tbl;
+	int tune_tbl_size;
+};
+
 struct eusb2_repeater {
 	struct device *dev;
 	struct regmap *regmap;
 	struct phy *phy;
 	struct regulator_bulk_data *vregs;
 	const struct eusb2_repeater_cfg *cfg;
+	struct tune_cfg *tune_cfg;
 	u32 base;
 	enum phy_mode mode;
 };
@@ -108,6 +123,79 @@ static const struct eusb2_repeater_cfg smb2360_eusb2_cfg = {
 	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
 };
 
+static struct tune tune_tbl[] = {
+	{
+		.tune_name = "qcom,tune-usb2-amplitude",
+		.host_tune_name = "qcom,tune-usb2-amplitude-host",
+		.init_tbl_idx = TUNE_IUSB2,
+		.tune_reg = EUSB2_TUNE_IUSB2,
+	},
+	{
+		.tune_name = "qcom,tune-usb2-disc-thres",
+		.host_tune_name = "qcom,tune-usb2-disc-thres-host",
+		.init_tbl_idx = TUNE_HSDISC,
+		.tune_reg = EUSB2_TUNE_HSDISC,
+
+	},
+	{
+		.tune_name = "qcom,tune-usb2-squelch",
+		.host_tune_name = "qcom,tune-usb2-squelch-host",
+		.init_tbl_idx = TUNE_SQUELCH_U,
+		.tune_reg = EUSB2_TUNE_SQUELCH_U,
+	},
+	{
+		.tune_name = "qcom,tune-usb2-preem",
+		.host_tune_name = "qcom,tune-usb2-preem-host",
+		.init_tbl_idx = TUNE_USB2_PREEM,
+		.tune_reg = EUSB2_TUNE_USB2_PREEM,
+	},
+};
+
+static struct tune_cfg tune_cfg = {
+	.tune_tbl	= tune_tbl,
+	.tune_tbl_size	= ARRAY_SIZE(tune_tbl),
+};
+
+static void eusb2_repeater_write_overrides(struct eusb2_repeater *rptr,
+					   bool is_host_mode)
+{
+	struct tune *tune_tbl;
+	int size, i;
+
+	tune_tbl = rptr->tune_cfg->tune_tbl;
+	size = rptr->tune_cfg->tune_tbl_size;
+
+	for (i = 0; i < size; ++i)
+		regmap_write(rptr->regmap, rptr->base + tune_tbl[i].tune_reg,
+			     is_host_mode ? tune_tbl[i].host_tune : tune_tbl[i].tune);
+}
+
+static void eusb2_repeater_parse_dt(struct eusb2_repeater *rptr)
+{
+	struct device_node *np = rptr->dev->of_node;
+	const u32 *init_tbl = rptr->cfg->init_tbl;
+	struct tune *tune_tbl;
+	int size, i, idx;
+
+	tune_tbl = tune_cfg.tune_tbl;
+	size = tune_cfg.tune_tbl_size;
+
+	for (i = 0; i < size; ++i) {
+		/* set default values from init_tbl */
+		idx = tune_tbl[i].init_tbl_idx;
+		tune_tbl[i].tune = init_tbl[idx];
+		tune_tbl[i].host_tune = init_tbl[idx];
+
+		/* update values from dt */
+		of_property_read_u8(np, tune_tbl[i].tune_name,
+				    &tune_tbl[i].tune);
+		of_property_read_u8(np, tune_tbl[i].host_tune_name,
+				    &tune_tbl[i].host_tune);
+	}
+
+	rptr->tune_cfg = &tune_cfg;
+}
+
 static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 {
 	int num = rptr->cfg->num_vregs;
@@ -127,20 +215,12 @@ static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 static int eusb2_repeater_init(struct phy *phy)
 {
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
-	struct device_node *np = rptr->dev->of_node;
 	struct regmap *regmap = rptr->regmap;
 	const u32 *init_tbl = rptr->cfg->init_tbl;
-	u8 tune_usb2_preem = init_tbl[TUNE_USB2_PREEM];
-	u8 tune_hsdisc = init_tbl[TUNE_HSDISC];
-	u8 tune_iusb2 = init_tbl[TUNE_IUSB2];
 	u32 base = rptr->base;
 	u32 val;
 	int ret;
 
-	of_property_read_u8(np, "qcom,tune-usb2-amplitude", &tune_iusb2);
-	of_property_read_u8(np, "qcom,tune-usb2-disc-thres", &tune_hsdisc);
-	of_property_read_u8(np, "qcom,tune-usb2-preem", &tune_usb2_preem);
-
 	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
 	if (ret)
 		return ret;
@@ -153,14 +233,9 @@ static int eusb2_repeater_init(struct phy *phy)
 	regmap_write(regmap, base + EUSB2_TUNE_USB2_HS_COMP_CUR, init_tbl[TUNE_USB2_HS_COMP_CUR]);
 	regmap_write(regmap, base + EUSB2_TUNE_USB2_EQU, init_tbl[TUNE_USB2_EQU]);
 	regmap_write(regmap, base + EUSB2_TUNE_USB2_SLEW, init_tbl[TUNE_USB2_SLEW]);
-	regmap_write(regmap, base + EUSB2_TUNE_SQUELCH_U, init_tbl[TUNE_SQUELCH_U]);
 	regmap_write(regmap, base + EUSB2_TUNE_RES_FSDIF, init_tbl[TUNE_RES_FSDIF]);
 	regmap_write(regmap, base + EUSB2_TUNE_USB2_CROSSOVER, init_tbl[TUNE_USB2_CROSSOVER]);
 
-	regmap_write(regmap, base + EUSB2_TUNE_USB2_PREEM, tune_usb2_preem);
-	regmap_write(regmap, base + EUSB2_TUNE_HSDISC, tune_hsdisc);
-	regmap_write(regmap, base + EUSB2_TUNE_IUSB2, tune_iusb2);
-
 	ret = regmap_read_poll_timeout(regmap, base + EUSB2_RPTR_STATUS, val, val & RPTR_OK, 10, 5);
 	if (ret)
 		dev_err(rptr->dev, "initialization timed-out\n");
@@ -177,6 +252,7 @@ static int eusb2_repeater_set_mode(struct phy *phy,
 
 	switch (mode) {
 	case PHY_MODE_USB_HOST:
+		eusb2_repeater_write_overrides(rptr, true);
 		/*
 		 * CM.Lx is prohibited when repeater is already into Lx state as
 		 * per eUSB 1.2 Spec. Below implement software workaround until
@@ -186,6 +262,7 @@ static int eusb2_repeater_set_mode(struct phy *phy,
 		regmap_write(regmap, base + EUSB2_FORCE_VAL_5, V_CLK_19P2M_EN);
 		break;
 	case PHY_MODE_USB_DEVICE:
+		eusb2_repeater_write_overrides(rptr, false);
 		/*
 		 * In device mode clear host mode related workaround as there
 		 * is no repeater reset available, and enable/disable of
@@ -252,6 +329,8 @@ static int eusb2_repeater_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	eusb2_repeater_parse_dt(rptr);
+
 	rptr->phy = devm_phy_create(dev, np, &eusb2_repeater_ops);
 	if (IS_ERR(rptr->phy)) {
 		dev_err(dev, "failed to create PHY: %d\n", ret);
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
