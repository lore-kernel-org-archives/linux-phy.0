Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0186C43334
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 22:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=27Sl7c4NmsmCgAXwOHCBr4jXSaA8wZ0H/m8zHaT/AKE=; b=WXw/k4y8AoQW1B
	vEBPcEpgzPUfsdVJ+Xk3gTTtl+RdtDotMvoIy9agBTSMW7WXPqdmL0Ox/cix8EbD6hYIcO1nW9/6l
	j0QjSVuNcqJ9xrFaCwAUv9arXdVDGt0ASUbu4Ipr8KakhH8LsH0WpY8sy4cFkVL1dtIOq2BAo8w1e
	H68S0leiXFWHubGMYECNSo3zuvg3X0po7hcsX9X4iKp5CZJWqDE5D4qxy4fke8xpcDb+6Cc5bQQH7
	b2sugv+medi1pK2m+UnEJy/jjoKbuHHECZ6RGZMZ7Vke8I0ShNrGf6SSH/djWNNgzaNvyLF+JkBFW
	rlTREgeKBzlMw+XNkmNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhwz-009vlU-Sv; Tue, 07 Jun 2022 22:45:25 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygob-009lzB-FA
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:32:42 +0000
Received: by mail-lf1-x135.google.com with SMTP id a15so30267828lfb.9
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:32:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=matJENDD03EhkdkDtCt3TARGaEJsorl9M5onQ8hujOI=;
        b=BSCF9e0GHPCHP7o9hiTxQOnDMFaAEZ2yi9p6GlDte5H7jDB1PHoxX3aJ1Y2kAdgrrF
         khgmUJIfvDwJmoPDKQWTwwlw9IWSYv1PpTO159vjqovobxKNRwCxNU3JpgBmfGqdjdps
         PkKXspJvIkt7gVr0rEi+RPpNJ9js1aH5aX3GbUEJKpDJwx2ZskcuyJzukn3Krmmsr6UG
         s/agWohMjm6ET/qES7X82su0KZMguMpRc8DQmj9bvagPO3p2wcDptDjbMux3HkpjGRtf
         7Z0nmfvtSuxki0tMhad92CKnT3OgJLKm/vmTCD+KJn/OTVTn2ItD+pvyNd9mP5rtftcK
         VlaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=matJENDD03EhkdkDtCt3TARGaEJsorl9M5onQ8hujOI=;
        b=mmCre7UlJfQ2GUhhmcOVXIeHQjK0AOsJaUFdCBC1K2aXFHk+WC7bbVLQkSIXbjcHHH
         WNH7Uu74ouVHliPyZ11UXWDE4LcyBmjPsYwXI5+KpRTPyR/VEuSeqpBBGsf4xYBSWP0V
         hHDFvDHqrf2xCX5yORdmThf7CV5VL7Y1O9PVifQZhlubBzFXsa12Q/l9ZzZ600kgXry6
         sGstujS/LSmySdRZoSgErrdSLgOXoIgG3XJIZQiljoTbEKrsvb090meEvTKcrno20Eij
         SiVQIm1wyYK5csi1Za1MEOpSNfqzm2tdn3ULRVl0/pHyyloGpLY20ElmWg0ZJrWDoeDT
         ZufQ==
X-Gm-Message-State: AOAM531bmHpMgecqRmR6ZqNOzcOWPwfQ8JUKZd19rpLxpLRu2Dz9BXkk
	HOtyx1wNu3GhxkbDGVvoA6zkPQ==
X-Google-Smtp-Source: ABdhPJzZQUSICiJTEbANj9rHD07tP91hOy1sXeETz/+fwDrt7Vn8eJc/ja7/9GzGHUgIGtTS3HDgvA==
X-Received: by 2002:a05:6512:169f:b0:479:f44:6a2c with SMTP id bu31-20020a056512169f00b004790f446a2cmr18541371lfb.80.1654637561025;
        Tue, 07 Jun 2022 14:32:41 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g23-20020ac24d97000000b0047255d21153sm3411343lfe.130.2022.06.07.14.32.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:32:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 27/30] phy: qcom-qmp-combo: use bulk reset_control API
Date: Wed,  8 Jun 2022 00:32:00 +0300
Message-Id: <20220607213203.2819885-28-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
References: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_143241_545933_E18E40A2 
X-CRM114-Status: GOOD (  15.19  )
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

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org> # UFS, PCIe and USB on SC8180X
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 49 +++++++++--------------
 1 file changed, 18 insertions(+), 31 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 86dc400a037e..893b5a4bb554 100644
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
