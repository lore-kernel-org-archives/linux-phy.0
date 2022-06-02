Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF6AACCA47A
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 07:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8tz3nAam0cSYj4ZyH1/Kr1vQUaFJQy4dNZx/Gwnre0=; b=bQTMnUx3kMcmdI
	kgAFygk2N65wtUgAwXg/9x5ASzfcXrZ+Q8n9VB7u6fi9MizLMFEMdjY0ZFL4T5iPX8UG4ABqoV60q
	08mpMU2IvuMYAEydVGG8Sg36IRd+MGN1Mgjlhnc+zoW9ZEDUmuqQjJc2cYemZHCjkK7L8Y/g3i+3C
	GzFuf6CWzINcHlFJysiEg2Jd6rqN1MOFVsDeYBAPSiVa0LbswnvKWzhBoJAjOiVl09e5j74ISJCpE
	EIkOsnMqono1esElnav3u8i114ssBgU6CIxXn/qPrZVVZJdKuM4kGxbmB1gsIAQ5aaUphpa86PmDV
	TfFMxwgpv+ItgeJuLMeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwfRs-00233W-C8; Thu, 02 Jun 2022 07:40:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwfRq-0022xm-GR
	for linux-phy@bombadil.infradead.org; Thu, 02 Jun 2022 07:40:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qElKsV2vhgg9lh1oEQvLqrVV3o7kWqVpeyDDIi7LS9s=; b=LMzIC/819DUlIZkOThj+vu3C1m
	6V/gh/ISDgFdAZG6ZWpdPDR0JWzW6DXofv+oi48w/gbKItMLmjtfzBX+c1Jf7VBlImBHRG4laXvqD
	0al/F+YgVBmhNrQSCkrIj+ReWMnG0EHcXEy3uDwy1LJwSXDjafAyd0OE+sRumxAjIvGMnA2lFLlSt
	oQjadfzoGsp1V/CN9sfmD2OCGB2WN8kgAb9WlGq6BG3IFoccapQM40Ll5fQ4ZPLij5TsvXebKTkS9
	QsaAzQPUUf+YIQU4+OI2XHTHqqonai3kbNvFjCsHxrPFskg0V7I5FE62Pv8hQs0ol4RuyH1CYHcjC
	Rcj72D5A==;
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwexd-0041lH-PW
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 07:09:40 +0000
Received: by mail-lj1-x236.google.com with SMTP id a23so4300213ljd.9
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 00:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qElKsV2vhgg9lh1oEQvLqrVV3o7kWqVpeyDDIi7LS9s=;
        b=hCDHzoLnyF0sPOP+UlBAWU0IeVswjLZbzVz0VuxNnyXw6/+Eib195M4TjStqi1N3fa
         Ewn0T6PRkhPjpqRNICHFxbnUapH9X6MDU8ablOp+L+0o1HaukOZDy8fDy4IkcU9fouO4
         c/aiR5GbJXK8d7jxjlizvUeEhvynW+4DeYyMcpW/xLAk3GiHwS/MxJvfhJhG3MR306mc
         rK2bHnU4LV9u94c3Gbkj5dYq6o7KXmuuLpG0e+5h+T/gvfQGCGDcl4d5l4qjkTL7AiQi
         X+VBVBgOMIeUSb/P+gHvZOan0NNvNiN9OFBKkxShLowmYb5x06XL0hR1HRq46GYqUhxA
         fWVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qElKsV2vhgg9lh1oEQvLqrVV3o7kWqVpeyDDIi7LS9s=;
        b=aA1GIcO+TZmboiqlyvhFQe90J3p9K1sPBEpZ22YUmI/2zmkOVkLSI9KsM/nfWw8Qmd
         P5zzSUsfKc1B9UerJOPl9eWP5qqD63ITV2/mWinFvCF5xV2VtYJ+mewjN1BL86C+B8X5
         qYuepzjt2WddN7viQpopDGjBRWXnJ0n6QkRasVyXMLe9lH/WbadzouDQei258Xxlwfrb
         Qzxt2RxkMIvus0Bklv48/+sWVAc5a60I9hTs31Vahd3Dl48TtjIdKet7ys5Y+BTtknCd
         gQb92qV4hZ7MOrxhqQw5XHnQQXgmbrIEiGZ/4SI99C0hsZWtUoJD18o2E9E7yWDUQVaw
         L1sA==
X-Gm-Message-State: AOAM531V0UJtoxEVqhL3utEtCMXHk2SqVRvw3Xi7GPoKZu3/SKVDkDlq
	ZN83pbKkUdrKzDtth4iGpXpYPw==
X-Google-Smtp-Source: ABdhPJz6oVZYN4od2s0RhtgDmsc1k5qsUTVile3Z3At9zXsy8BLR8ZsZBq4m+K47XwsaY6v7yMvE8Q==
X-Received: by 2002:a05:651c:1029:b0:255:7038:f7e8 with SMTP id w9-20020a05651c102900b002557038f7e8mr2702182ljm.377.1654153775872;
        Thu, 02 Jun 2022 00:09:35 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d25-20020a056512369900b0047255d21114sm870218lfs.67.2022.06.02.00.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 00:09:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v3 27/30] phy: qcom-qmp-combo: use bulk reset_control API
Date: Thu,  2 Jun 2022 10:09:06 +0300
Message-Id: <20220602070909.1666068-28-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
References: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_080938_444607_03114852 
X-CRM114-Status: GOOD (  14.59  )
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

Switch qcom-qmp-combo driver to use reset_control_bulk_assert / _deassert
functions rather than hardcoding the loops in the driver itself.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 49 +++++++++--------------
 1 file changed, 18 insertions(+), 31 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c7f8a7f7a9ba..c227880f3a4f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -741,7 +741,7 @@ struct qcom_qmp {
 	void __iomem *dp_com;
 
 	struct clk_bulk_data *clks;
-	struct reset_control **resets;
+	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
 	struct qmp_phy **phys;
@@ -1586,7 +1586,7 @@ static int qcom_qmp_phy_combo_com_init(struct qmp_phy *qphy)
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *pcs = qphy->pcs;
 	void __iomem *dp_com = qmp->dp_com;
-	int ret, i;
+	int ret;
 
 	mutex_lock(&qmp->phy_mutex);
 	if (qmp->init_count++) {
@@ -1601,22 +1601,16 @@ static int qcom_qmp_phy_combo_com_init(struct qmp_phy *qphy)
 		goto err_unlock;
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
@@ -1659,8 +1653,7 @@ static int qcom_qmp_phy_combo_com_init(struct qmp_phy *qphy)
 	return 0;
 
 err_assert_reset:
-	while (++i < cfg->num_resets)
-		reset_control_assert(qmp->resets[i]);
+	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 err_unlock:
@@ -1673,7 +1666,6 @@ static int qcom_qmp_phy_combo_com_exit(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	int i = cfg->num_resets;
 
 	mutex_lock(&qmp->phy_mutex);
 	if (--qmp->init_count) {
@@ -1683,8 +1675,7 @@ static int qcom_qmp_phy_combo_com_exit(struct qmp_phy *qphy)
 
 	reset_control_assert(qmp->ufs_reset);
 
-	while (--i >= 0)
-		reset_control_assert(qmp->resets[i]);
+	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
 	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
 
@@ -1994,23 +1985,19 @@ static int qcom_qmp_phy_combo_reset_init(struct device *dev, const struct qmp_ph
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
