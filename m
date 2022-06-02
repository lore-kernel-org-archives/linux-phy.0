Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D78ACCA47A
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 08:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgqSstbeV4mY+VbMTGSlc3twPKoXjSsbx4p1BmDWKck=; b=QhBLFX3W/ZqmMX
	sapMiD7QDMPDWj7KYA1wHqw9W8CAZHs3IZs6U1CMxxdiAdDlTuIaQFCX0Prn2oFGMh3ctZwWKUNcJ
	ltvQgSx2dlDeAjuG+0tjL3cU0pvZ2XmOxKrFoi3nZKSiMjc4SmHeeOc08kdU7x4YPfqY7XQrtaO+A
	CcmMci1vX0mElKEA4mh3m6kdv5+y5cqOA2ZoFyeGrIt4qQLK7Yy6y7GaBsmGciwedXjBUgTzTfMQL
	0bQO1ywW3g9xflb+DexhdjFphEbutvCEUsFgC5Ytg59SwLC/BjgFuq3s8VfbPoceQkcGycWtnXUIf
	sD/IwnM0wPTpeVm+RI/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwfzl-002BMM-0p; Thu, 02 Jun 2022 08:15:53 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwexd-001xSc-Bp
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 07:09:38 +0000
Received: by mail-lf1-x130.google.com with SMTP id l30so6404668lfj.3
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 00:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZUi1GRDCzbQz4WRL2Z8raunDlEwEnLD1WyZsTIqHcSs=;
        b=movyFdz0seUuiwUeYHGAMTdXWumEnM/SCLVjU61kqTg1Cm5Lw21ticVQT08tocWl7C
         AJV9iini/uB1jvdX32G2OKAUPT31zm0+Jhv408gB3DEsmoDFD8yKOxT+fRjfTcNgOBWj
         dtGXBkUFnxYnOtUSZT+HSGSGPyJ8Ox2A+2CYP9+Anf8hC75ZgY7KrQXFDpWikWwujzj6
         8JLTpIzPs4Z2yIZqZL7Pyz6p0d+9X8ISroS0/y3WRdfB2bNxVX2LmRVUNZ2iPUUf/ujh
         +lj33C/62ZDNaJxIuP+zduGOgUI4O7+rxW5RmF+D0TCYHpwJ6bH0ydLlYXPoUeMOiCwz
         GrFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZUi1GRDCzbQz4WRL2Z8raunDlEwEnLD1WyZsTIqHcSs=;
        b=pBKptO9k22Vo4hr/xaTj/H1ql8SwuGiejZjP97bKCqhduyC4XGlueGl3UVOv0hbcnO
         /CkUu4ltXoWSp4sjXJnXWO6tFk/zEVZ+SZOri5YklpmudFne4mPdIr8tpZFjMdOcTuOw
         YPkAFHJpc4WvAqO1UkoMXq7x+k4DomxeSAKWCMUhnYjmlObTWWDkD4gWZxupSChh5jR5
         5i5egwV+mBJQDHlKj41R2RnGIN3eDtOpTjcNgGAxvK5Ny8TSefoBC05B7JJCOOx1B/RZ
         RyNHPcPowga/YzJ4cM62n/yNl/gxrbBbXLIRmJ4RSKObJJ9y8PgW9gqWG9r5ZKz19hRF
         c3mg==
X-Gm-Message-State: AOAM532Ga1XII2NzeOAcaVCr2VTxIFhrY4SmK1Qq1pcOTGO9L7sF+Znk
	nDMwucvg2Q8kDRuFWscOoYeeZg==
X-Google-Smtp-Source: ABdhPJwafDWA/nTwCYFnhq7m6YxICMafBcii6APlAw7vopjjTp0g6m+hQ5Zk8OpB/FC4VOgbS4lDeA==
X-Received: by 2002:a05:6512:3b09:b0:478:66dd:3081 with SMTP id f9-20020a0565123b0900b0047866dd3081mr2528327lfv.107.1654153776875;
        Thu, 02 Jun 2022 00:09:36 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d25-20020a056512369900b0047255d21114sm870218lfs.67.2022.06.02.00.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 00:09:36 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v3 28/30] phy: qcom-qmp-pcie: use bulk reset_control API
Date: Thu,  2 Jun 2022 10:09:07 +0300
Message-Id: <20220602070909.1666068-29-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
References: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_000937_420285_07559459 
X-CRM114-Status: GOOD (  14.95  )
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

Switch qcom-qmp-pcie driver to use reset_control_bulk_assert / _deassert
functions rather than hardcoding the loops in the driver itself.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 49 +++++++++---------------
 1 file changed, 18 insertions(+), 31 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 0676b67d3ff6..bd9f71456e32 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -1334,7 +1334,7 @@ struct qcom_qmp {
 	struct device *dev;
 
 	struct clk_bulk_data *clks;
-	struct reset_control **resets;
+	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
 	struct qmp_phy **phys;
@@ -1789,7 +1789,7 @@ static int qcom_qmp_phy_pcie_com_init(struct qmp_phy *qphy)
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *pcs = qphy->pcs;
-	int ret, i;
+	int ret;
 
 	/* turn on regulator supplies */
 	ret = regulator_bulk_enable(cfg->num_vregs, qmp->vregs);
@@ -1798,22 +1798,16 @@ static int qcom_qmp_phy_pcie_com_init(struct qmp_phy *qphy)
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
@@ -1831,8 +1825,7 @@ static int qcom_qmp_phy_pcie_com_init(struct qmp_phy *qphy)
 	return 0;
 
 err_assert_reset:
-	while (++i < cfg->num_resets)
-		reset_control_assert(qmp->resets[i]);
+	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -1843,10 +1836,8 @@ static int qcom_qmp_phy_pcie_com_exit(struct qmp_phy *qphy)
 {
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
-	int i = cfg->num_resets;
 
-	while (--i >= 0)
-		reset_control_assert(qmp->resets[i]);
+	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
 	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
 
@@ -2056,23 +2047,19 @@ static int qcom_qmp_phy_pcie_reset_init(struct device *dev, const struct qmp_phy
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
