Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94092C47079
	for <linux-phy@archiver.kernel.org>; Fri,  5 Jan 2024 10:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3ZoXTd8Z65iLqvZo8aoC5hYSbmE7sjFgfCHit57YXw=; b=GmRaPP8ift9U5K
	sVdOMgBM/YOj5oyg6UqC75pHz1j+UN08f/yEgcir5cPwjtNgYsIjm1mhWn/fh0J7zM5ZNapC8W3HH
	Ywod92ad0W2c3szH79oPEh4+LRBkl7Th1ld2clgn4rygiRfnxNDno2XjXENtUoSF4PBJLiydW1npR
	yk8N0/B0wTs90RBUgGhuhgeuXtZN7CmHSmUHHjyrjOxffrS1Anr61lyJgtpQxvHcUUwucYjEOiY2n
	f2Dd/RZTuNh/WVQRseX8lcqpHvmv8wO1wLz0YtA+s3U9pbgCCgj9lV3+fgy/9XWdDaQbLP5uGr9zs
	1D/sx0z1Er+x5sPZxvuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLhFi-00GVCs-15;
	Fri, 05 Jan 2024 10:16:34 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLhFg-00GVBi-0B
	for linux-phy@lists.infradead.org;
	Fri, 05 Jan 2024 10:16:33 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2cca5d81826so20268131fa.2
        for <linux-phy@lists.infradead.org>; Fri, 05 Jan 2024 02:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704449790; x=1705054590; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/QKH2I8GrPdCeY4Xo3OxMu/ITqYHkEvyiTHRM/5TT/M=;
        b=cDdZy2h5xRPI3ITm7y23Tevy9sK7w6w7ktGzXUqJ/eBmXj2cvdtzU8LOnds553qD7J
         8THcVlLK5IIpeZS420SiVHkk5AszRw0u9YrGAFiLnM83NkoKKbtTfjf/Y1cUCB1xlbA1
         nVyIK3G5CdhxaipWiWCcs88lVfVgQqV3TYLfyV8+l6grQH0RTb8KWxselo9Z7L5CItUL
         Ysvl/CA+QwZIA+4cFCZFgmEF2OC+Y/AiQiSMk7+7eSF4CwFnf+eQYRnN4g3So9P4gi2K
         JPI8ulXIyWAna8FJip3kvTYlgAkQ9vVYE4lQAhM83+0CdKfmmh1FLB9w3FxmlAgNnMu1
         goWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704449790; x=1705054590;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/QKH2I8GrPdCeY4Xo3OxMu/ITqYHkEvyiTHRM/5TT/M=;
        b=MBNLMSyLRm19bHkbGClu4+IoftMouNZb3dbUpxuFPf6MKkAIoRnY35nj5vY3MRn7tQ
         y0PurZiSzJRCW5JxwQtKjl/yvG74oH3UbWLgAxB/IqzfkHczTBS6wT+o0Y4BuuNmA2r/
         5DHQAFApdozmggbRRwoEP13VQkAPTgRZDDXvjr1X/MJKXP8NxJjvzD6Lf+WYyoV/nt4i
         gY2607crzefrHjV0vzwa5g8FgmYoEVgy8QIhGQ1uzkSRz+7S59M/OA4uODT9gG8qua32
         k4/XO+F0cCXO1UYzTMZJfnANuEGphb3LXDOsDWZUk/VY5y0BirJqvQ80CF3MTuoNrUS/
         V0LQ==
X-Gm-Message-State: AOJu0Yx2JjLE9hhmXQxnoOBbxctlKg0s2eP8x+2uJtFvmH3yml3TxR68
	NJ54VlGJf9TWpxadn2eKz7HCEgR6CWoM4g==
X-Google-Smtp-Source: AGHT+IH1RawZ6OGwh/tmYi2y5tlVMSy5TK/O7WKXvjLqh8pSSTkg0pe17sX5VEnwrzib+wteIRYU1Q==
X-Received: by 2002:a05:6512:398f:b0:50e:a8c7:b2df with SMTP id j15-20020a056512398f00b0050ea8c7b2dfmr1238858lfu.36.1704449790463;
        Fri, 05 Jan 2024 02:16:30 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id o9-20020a170906358900b00a2824bff5b1sm713180ejb.216.2024.01.05.02.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 02:16:30 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Fri, 05 Jan 2024 12:16:17 +0200
Subject: [PATCH v2 2/2] phy: qualcomm: eusb2-repeater: Rework init to drop
 redundant zero-out loop
MIME-Version: 1.0
Message-Id: <20240105-phy-qcom-eusb2-repeater-fixes-v2-2-775d98e7df05@linaro.org>
References: <20240105-phy-qcom-eusb2-repeater-fixes-v2-0-775d98e7df05@linaro.org>
In-Reply-To: <20240105-phy-qcom-eusb2-repeater-fixes-v2-0-775d98e7df05@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elliot Berman <quic_eberman@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=4690; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=qz6RxnBEtexpOzrPteLkLotdoWP7JKERv8XNG5Nn5QM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBll9b6oEoplC1rUxzC5CX0PPap9ab4rMbCpOvnF
 gB3skAbdMWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZZfW+gAKCRAbX0TJAJUV
 VkmMEAC24tkNwCFDgvtyg4UdCNkqDoMI7rhoRoHjl8iutENftVniejltVji8R6WcslGJhr3uzyx
 sO1FM+8DgxKVuiIM7PLO97LbHwqDk1J1q3qN/7ViKmIYKJsU1KuXSOmh894Z5JmYfNi1hnBlqBQ
 /j9EddFvW/SbATHdL/7T/xHrnqj4AYAywauwTKhcDZEz9lbuvjxqq/v+Rbx+0gBb/rDgwJ9zgsO
 NblEYyt1QRAp+dC4wyuBjAa1JlO1MluMSlNrq86xOWz/sg8owH+h15Tude7ZZPHyW9sMP7u0YsF
 ee+9JAc4whznsIvVjLC5OyZcgG2SMJz0HlsR1isCNkoCbIqq2WtQH2OqNCxL4elNChKSveeEiJT
 sBWYvfpv7AO/Mm9k/oz2i74sOwmtDyZMwho1YoDaM1WkvY5lX2T65AVYugRnaT7gaei2j3WSb+b
 OYpDm7AGhVBhytb31Qv7MdYxiznkv/q+MtkFWvGZ+GTC/+W6GjuhY+s5RYo9sWnHktoQicrfmbN
 h+u8ntPOjhA8P0suRSayTxEVEpV87R6+2uSFiA++IbnBjiI/ixsqOnUL4/I0AQ922CoJcfrGUU5
 i6BB4xmoa0m0d5whGV2svtrt6zxndROwCWFzI8KikcS9VCuvlbJUL9ugMpDtugwaukV4dKMFYHG
 Bvdgr57kzmJHYUg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_021632_094484_187ADA1D 
X-CRM114-Status: GOOD (  16.49  )
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

The device match config init table already has zero values, so rework
the container struct to hold a copy of the init table that can be
override be the DT specified values. By doing this, only the number of
vregs remain in the device match config that will be later needed, so
instead of holding the cfg after probe, store the number of vregs in the
container struct.

Fixes: 99a517a582fc ("phy: qualcomm: phy-qcom-eusb2-repeater: Zero out untouched tuning regs")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 42 ++++++++++++--------------
 1 file changed, 19 insertions(+), 23 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 5f5862a68b73..d28106e71ce3 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -102,7 +102,8 @@ struct eusb2_repeater {
 	struct phy *phy;
 	struct regulator_bulk_data *vregs;
 	struct reg_field *regfields;
-	const struct eusb2_repeater_cfg *cfg;
+	u32 *init_tbl;
+	int num_vregs;
 	enum phy_mode mode;
 };
 
@@ -123,9 +124,10 @@ static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
 	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
 };
 
-static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
+static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr,
+				     const struct eusb2_repeater_cfg *cfg)
 {
-	int num = rptr->cfg->num_vregs;
+	int num = cfg->num_vregs;
 	struct device *dev = rptr->dev;
 	int i;
 
@@ -134,7 +136,7 @@ static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 		return -ENOMEM;
 
 	for (i = 0; i < num; i++)
-		rptr->vregs[i].supply = rptr->cfg->vreg_list[i];
+		rptr->vregs[i].supply = cfg->vreg_list[i];
 
 	return devm_regulator_bulk_get(dev, num, rptr->vregs);
 }
@@ -142,32 +144,19 @@ static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 static int eusb2_repeater_init(struct phy *phy)
 {
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
-	struct reg_field *regfields = rptr->regfields;
 	struct device_node *np = rptr->dev->of_node;
-	u32 init_tbl[F_NUM_TUNE_FIELDS] = { 0 };
+	u32 *init_tbl = rptr->init_tbl;
 	u8 override;
 	u32 val;
 	int ret;
 	int i;
 
-	ret = regulator_bulk_enable(rptr->cfg->num_vregs, rptr->vregs);
+	ret = regulator_bulk_enable(rptr->num_vregs, rptr->vregs);
 	if (ret)
 		return ret;
 
 	regmap_field_update_bits(rptr->regs[F_EN_CTL1], EUSB2_RPTR_EN, EUSB2_RPTR_EN);
 
-	for (i = 0; i < F_NUM_TUNE_FIELDS; i++) {
-		if (init_tbl[i]) {
-			regmap_field_update_bits(rptr->regs[i], init_tbl[i], init_tbl[i]);
-		} else {
-			/* Write 0 if there's no value set */
-			u32 mask = GENMASK(regfields[i].msb, regfields[i].lsb);
-
-			regmap_field_update_bits(rptr->regs[i], mask, 0);
-		}
-	}
-	memcpy(init_tbl, rptr->cfg->init_tbl, sizeof(init_tbl));
-
 	if (!of_property_read_u8(np, "qcom,tune-usb2-amplitude", &override))
 		init_tbl[F_TUNE_IUSB2] = override;
 
@@ -228,7 +217,7 @@ static int eusb2_repeater_exit(struct phy *phy)
 {
 	struct eusb2_repeater *rptr = phy_get_drvdata(phy);
 
-	return regulator_bulk_disable(rptr->cfg->num_vregs, rptr->vregs);
+	return regulator_bulk_disable(rptr->num_vregs, rptr->vregs);
 }
 
 static const struct phy_ops eusb2_repeater_ops = {
@@ -240,6 +229,7 @@ static const struct phy_ops eusb2_repeater_ops = {
 
 static int eusb2_repeater_probe(struct platform_device *pdev)
 {
+	const struct eusb2_repeater_cfg *cfg;
 	struct eusb2_repeater *rptr;
 	struct device *dev = &pdev->dev;
 	struct phy_provider *phy_provider;
@@ -255,8 +245,8 @@ static int eusb2_repeater_probe(struct platform_device *pdev)
 	rptr->dev = dev;
 	dev_set_drvdata(dev, rptr);
 
-	rptr->cfg = of_device_get_match_data(dev);
-	if (!rptr->cfg)
+	cfg = of_device_get_match_data(dev);
+	if (!cfg)
 		return -EINVAL;
 
 	regmap = dev_get_regmap(dev->parent, NULL);
@@ -269,6 +259,12 @@ static int eusb2_repeater_probe(struct platform_device *pdev)
 	if (!rptr->regfields)
 		return -ENOMEM;
 
+	rptr->init_tbl = devm_kmemdup(dev, cfg->init_tbl,
+				       sizeof(cfg->init_tbl),
+				       GFP_KERNEL);
+	if (!rptr->init_tbl)
+		return -ENOMEM;
+
 	ret = of_property_read_u32(np, "reg", &res);
 	if (ret < 0)
 		return ret;
@@ -282,7 +278,7 @@ static int eusb2_repeater_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	ret = eusb2_repeater_init_vregs(rptr);
+	ret = eusb2_repeater_init_vregs(rptr, cfg);
 	if (ret < 0) {
 		dev_err(dev, "unable to get supplies\n");
 		return ret;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
