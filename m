Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF089CCA485
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 21:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgkfFGm/oqH7EHxb8FQmF091fj6L96gm+Jry7ur5SpE=; b=29QngwAAShTBT6
	Yyvp1X43ondFchBHQwgKNoFeHpTh8o7bFgkfCtffBzpG8qtwlbQN6dq2yNO1pRaRyv9VvGYSeDAdr
	FL0tauobTDvX+QOU1KClFNv7Xwuc40f3IJ0vS5jHaYfGvdq1zNnl6t0rUx/0Jy614gOQS8qfgrcm6
	ZjfvseyJLj0giwXkKGu6lwTuwWObcdBLUav0TmFI44SwfjJDHUzwohiSDjrz/ZLMInHqzQtbYE/FT
	JNB7JXVC7retNCj6nhCu4dSpHGnWfCh0amIsz4zXaCWIJy0x2iS3jPsmQ+375Y4XFn0W7E1rP0yxh
	kdFivLejOwp1Wy7sDF8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygog-009mD7-8W; Tue, 07 Jun 2022 21:32:46 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygoe-009m30-96
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:32:45 +0000
Received: by mail-lf1-x12e.google.com with SMTP id be31so30300584lfb.10
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ixHZCxbKVt8fjndP+UfhbUXTOaVi0gSAR/Uhq+eMI30=;
        b=vfJtn8aYdXMJWbYkip3toQJWuyZKEmknC+45LjsWoWiaWvQqMpLd28pY/2+1wSIiG9
         GZG0r2q/7Gloma+uVfWxHQlS8zOup5LSqvnXn9s3hhg7aHFATMrBJzUlvTt2qucjwkj8
         8H1OyMGgGURtSczmeeZ3W3n1BF05URMc6kvFPwJ81qRV9wR+gNrythENLItWaXUg1NfJ
         6onC6XeVjoOYjpP5WlRJbEF+UqPM9VMOZMsAKn/tTEPB8YUYGKfnVB+j4pTPWQ8Caq3v
         mUHV2QLOR7YsT0Vsau334Ke8aDpnWnoCq2fJ0Pv0SvsG14UqcOBDQ6EZMBp640f7iGxb
         sQlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ixHZCxbKVt8fjndP+UfhbUXTOaVi0gSAR/Uhq+eMI30=;
        b=CzXmwejumBrMIKUgYqYGankxPeyzq7L3SAipSJdabXoBGlFQ87mtEXGg/ZqWffqFo0
         FGeQxmQqMivAg9w6wCZkT2pQnv1c+kdWIyVo5tNbP494pPE01+1RxsPxLa4vy2z25p8U
         lDC4y5tMdxHwcyNHVh8EVSI4JGrPoBh+YK0eicbXUJb/7x6Pqwb8cIqTwyHVrxTE1N/B
         olFxxXdQHsol5YysjCBwnov3fDCaxISuNjeZmlxQzLIWp3oOdFpSjlxdCmruRgDuQ6ax
         ph+WWeg3nmD22q880NM/9wKxfGTP/mOMn7gIYEEibvSePo57Z48saamcuzkstAtWtE0c
         zTYQ==
X-Gm-Message-State: AOAM531kh5nKL/A0Ras3aZe9J8wLVX86OYpWlwC5zxsX2IA5YEALkpAQ
	qyPxTes9r3Iurdv9QeZ6jOhX4w==
X-Google-Smtp-Source: ABdhPJwtOMV07mmBZqOXaW4umlQR4UYyr28OqPvj6Qt38rUJsY2o5pq9fx92Eu09eIPUgG5EAdgJwA==
X-Received: by 2002:a05:6512:12c6:b0:479:44cc:7bc with SMTP id p6-20020a05651212c600b0047944cc07bcmr8355423lfg.659.1654637563783;
        Tue, 07 Jun 2022 14:32:43 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g23-20020ac24d97000000b0047255d21153sm3411343lfe.130.2022.06.07.14.32.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:32:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 30/30] phy: qcom-qmp-usb: use bulk reset_control API
Date: Wed,  8 Jun 2022 00:32:03 +0300
Message-Id: <20220607213203.2819885-31-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
References: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_143244_334811_03CB566D 
X-CRM114-Status: GOOD (  15.49  )
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

Switch qcom-qmp-usb driver to use reset_control_bulk_assert / _deassert
functions rather than hardcoding the loops in the driver itself.

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org> # UFS, PCIe and USB on SC8180X
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 49 +++++++++----------------
 1 file changed, 18 insertions(+), 31 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 969253e7bdd9..aebe5ed4e4e3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -1446,7 +1446,7 @@ struct qcom_qmp {
 	void __iomem *dp_com;
 
 	struct clk_bulk_data *clks;
-	struct reset_control **resets;
+	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
 	struct qmp_phy **phys;
@@ -2009,7 +2009,7 @@ static int qcom_qmp_phy_usb_com_init(struct qmp_phy *qphy)
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *pcs = qphy->pcs;
 	void __iomem *dp_com = qmp->dp_com;
-	int ret, i;
+	int ret;
 
 	/* turn on regulator supplies */
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
@@ -2018,22 +2018,16 @@ static int qcom_qmp_phy_usb_com_init(struct qmp_phy *qphy)
 		return ret;
 	}
 
-	for (i = 0; i < cfg->num_resets; i++) {
-		ret = reset_control_assert(qmp->resets[i]);
-		if (ret) {
-			dev_err(qmp->dev, "%s reset assert failed\n",
-				cfg->reset_list[i]);
-			goto err_disable_regulators;
-		}
+	ret = reset_control_bulk_assert(cfg->num_resets, qmp->resets);
+	if (ret) {
+		dev_err(qmp->dev, "reset assert failed\n");
+		goto err_disable_regulators;
 	}
 
-	for (i = cfg->num_resets - 1; i >= 0; i--) {
-		ret = reset_control_deassert(qmp->resets[i]);
-		if (ret) {
-			dev_err(qmp->dev, "%s reset deassert failed\n",
-				qphy->cfg->reset_list[i]);
-			goto err_assert_reset;
-		}
+	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
+	if (ret) {
+		dev_err(qmp->dev, "reset deassert failed\n");
+		goto err_disable_regulators;
 	}
 
 	ret = clk_bulk_prepare_enable(cfg->num_clks, qmp->clks);
@@ -2074,8 +2068,7 @@ static int qcom_qmp_phy_usb_com_init(struct qmp_phy *qphy)
 	return 0;
 
 err_assert_reset:
-	while (++i < cfg->num_resets)
-		reset_control_assert(qmp->resets[i]);
+	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -2086,10 +2079,8 @@ static int qcom_qmp_phy_usb_com_exit(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	int i = cfg->num_resets;
 
-	while (--i >= 0)
-		reset_control_assert(qmp->resets[i]);
+	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
 	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
 
@@ -2376,23 +2367,19 @@ static int qcom_qmp_phy_usb_reset_init(struct device *dev, const struct qmp_phy_
 {
 	struct qcom_qmp *qmp = dev_get_drvdata(dev);
 	int i;
+	int ret;
 
 	qmp->resets = devm_kcalloc(dev, cfg->num_resets,
 				   sizeof(*qmp->resets), GFP_KERNEL);
 	if (!qmp->resets)
 		return -ENOMEM;
 
-	for (i = 0; i < cfg->num_resets; i++) {
-		struct reset_control *rst;
-		const char *name = cfg->reset_list[i];
+	for (i = 0; i < cfg->num_resets; i++)
+		qmp->resets[i].id = cfg->reset_list[i];
 
-		rst = devm_reset_control_get_exclusive(dev, name);
-		if (IS_ERR(rst)) {
-			dev_err(dev, "failed to get %s reset\n", name);
-			return PTR_ERR(rst);
-		}
-		qmp->resets[i] = rst;
-	}
+	ret = devm_reset_control_bulk_get_exclusive(dev, cfg->num_resets, qmp->resets);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to get resets\n");
 
 	return 0;
 }
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
