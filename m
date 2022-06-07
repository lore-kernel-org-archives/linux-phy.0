Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B499ACCA483
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 21:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xwiCk6snecp4mY/nK/6HzVdOoIFbVqpIemJti67EPg=; b=dXjFGtd3seHHgX
	cNsL5trbXkW4Dh3HWq31BlHLjLCcJ9eecrf4FOjAJVm6W+S0+qVFaw07r9X/fhSoGdRQeP6bnM2iT
	2E0elHNGdw5/joJr7E5IApvsqoc4mUR9Zk+tipSBMM+oePJ0hu0UobvKcVGYVTbkLJKbIZlGfqwcs
	DyTt0ffyXTLMz2NhK/MtwABzYPk/bmU3coLjptuEWXgPUWUY5JmFt5EDI/5Go4fEwhO6YQRduoEm+
	n3LFHlM5S2DXEFFKBOFqZdYBBkjzt1ger40z1Enp7pt5KA0ALBNAXCnK4CEn+G2uA6Aum+wd342w+
	fajMWtgU6xy5PY+QedmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygog-009mD1-4o; Tue, 07 Jun 2022 21:32:46 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygoc-009m2P-95
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:32:43 +0000
Received: by mail-lf1-x135.google.com with SMTP id u26so29549903lfd.8
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eUITCYEFgBSYLxAW8LXRI0XkBV+vruLWDC5eLFEPeao=;
        b=fAcjRSuCkxTDpG4O8Y+JyEJjmbD2PYBITecrllXsvkg8gzDJlntpMj3CEAlEEeGuoP
         QTGzr1GXGnSiGARILsZW7cV88HqLrvt/PANq9r253Y9pFTEdCx+hX6oL7su7yO9Hu7sB
         3NmLKkOoYK5Rb9HTsgl3tpqO7bt7eR08dOyolFxJZgXo/Fsi971y6Kog4I8jxSM+JTqJ
         5emRajvx32oGNq+d/Mhe6E16d/G6RGxL40Zi9JptuD8pFaQsWU/BcKLn2F8VGXFrYkjP
         c3hn1YXrsbUMMuxNQO6ZJAC7LO4jHlRNR9iYgpj5iWzSaFp5/FhV911c1gCqpzF+DNPM
         vAiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=eUITCYEFgBSYLxAW8LXRI0XkBV+vruLWDC5eLFEPeao=;
        b=kLvXt/oKjzrFg95xrEARxiYq6i/HvdiawtAluInHXsrwzKqLREXCU7Cxct5Xqu9MQ+
         cZbXukLhs6AA3dPTqxCUCbRcqmIBl+fEks+ItLWCuFCe788z5H6VwwCHtqSnwU6Oxu2E
         YuAKNX2ECH34BsFsMo5Jh8KPTQYH38o6Kv4Ecbf2AmOGFMh3mk6hOOEwIdFyL3OUA0qs
         KBfLsY1dK7S6u0EYM+Nrl5xUgeL1s48aHmKk1blyr0MJjJZ0e8j5wpRrZcLz/MkeM0YD
         jXB/H2kg0gq+W1xmuX8dQlFeiX1fYV//WZqTcMvOeAmjm8s1waf1++xlG73ZGtU56mMA
         RMvg==
X-Gm-Message-State: AOAM532K0bXnTQ/swzodltdE22i2trKcJOjRYfyVoyO8z9S3GEEhOob8
	ldz28U/paDl+eSMhxHHEwkYx2g==
X-Google-Smtp-Source: ABdhPJw0EwBgGfJJH3EnSASBPhOC10uvi7mNtCaP7OGGL2PoSYh2u2Uavb15KxsFxv1bcY8+lRgxFw==
X-Received: by 2002:a05:6512:234e:b0:479:3bb1:8d3c with SMTP id p14-20020a056512234e00b004793bb18d3cmr9897712lfu.478.1654637561823;
        Tue, 07 Jun 2022 14:32:41 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g23-20020ac24d97000000b0047255d21153sm3411343lfe.130.2022.06.07.14.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:32:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 28/30] phy: qcom-qmp-pcie: use bulk reset_control API
Date: Wed,  8 Jun 2022 00:32:01 +0300
Message-Id: <20220607213203.2819885-29-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
References: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_143242_335601_33D03CB9 
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

Switch qcom-qmp-pcie driver to use reset_control_bulk_assert / _deassert
functions rather than hardcoding the loops in the driver itself.

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org> # UFS, PCIe and USB on SC8180X
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
