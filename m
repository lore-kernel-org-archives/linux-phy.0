Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9467ACCA479
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 08:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SI4/RUoMyCwLnYm+THEGv6/YodG5fTZ30jeth24Rr1I=; b=47ezT59AYCU+ug
	zGGeDhDJNUXTNZv09KB1yUhJ7qtuQWfBtZAB0Erx0QifiWU2qwB70ai//Q7mZK4qm7SAHgUO4iaQr
	Rf8/jk7y/popK/aNiYM/kM+rKrvmyRcpyeCShB1VYD9Nb8b4Hje38YQkA+0DRPnHfnmTgVD+VmLVu
	qHD7sGaoZvCYnE1S1vH03S/t96zrvyv7rUwMHTA9U7mMErAMxPUw2o5mpdFB1nI+Tv1s96yS5v2Ux
	0PbwzhQSRKnTfLnUptZI2MgI4mBpN6cpzUCK9Tq9FJ8YFIVWSnstiEX7LyBo1xXu4gzpb4ZqIkCxL
	SN+JSqMaywOfEFFsEFqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwfzl-002BMe-6T; Thu, 02 Jun 2022 08:15:53 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwexe-001xPU-Hh
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 07:09:40 +0000
Received: by mail-lf1-x130.google.com with SMTP id i10so6456737lfj.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 00:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=t/mC2ab4egIvRd54WAnllrEiQZ9AIOTgJQtdTx/MY40=;
        b=XmmfanbshclpFvDaJ0Lon3sjDrtIMvi0S/pf1TpF33XZXhPdn/K3joDUjr8nUZ+TpR
         9v/6+Jbi79PpSciJzWiley4/Pntz0OEvE20P8iZMhQ691C7ENatLw6MagEW2373cl6mf
         hq+vgIZFY2v8XGHAl+7nBSRXZA3YP1HdQ4O0cXETckzkiiC8m/PVXZxkHyIA9T54UiP8
         Kby00OZVMXxPQ3AUJgrV0D7o9v8TN5vzVaq1rM6r3wWq7MTC+k1ajZsdJ0KVQoORD0tV
         fRc+p4XSGj3EmTL8hKY5PTVtOBItfUct5IupaFEN8dckZwrmUaYESJH27eJRX5opHVR7
         AgSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=t/mC2ab4egIvRd54WAnllrEiQZ9AIOTgJQtdTx/MY40=;
        b=zm6zqFNIFrCNVpx/Mhka0Iv+pEgMoAE4MZiGrZtlo2Kc12JSoetp1BqIkEE2ymEOPw
         fOu1eW7Di1hKipFy+t0vgcWJF3UcYeqgwbCBnOTXOtGWZWYqFeltemlzH5PctVT+2+8e
         rKUcpXgtwRy09cbdW29sj/qPpm/5r67AAE8DtbnkPftGWenpgsDkCPBYec9nKWGSxY14
         zhiS23dG0fqDMpOtAVRs+kcoSGuomqPl1Ik2qLIKzzAvo0liv6vUCE4plLoh8zK/wwlc
         5Bw8j8nSb3iyZn+bzQ6ZZbSaRDK5zR2ewBUF7BFyxjn0N+pDVPCRjGT1vOqIiKqquu+H
         2RXA==
X-Gm-Message-State: AOAM530OqvdK3IpmuUX9elvBj9oVVkh+Nxw2ug4WN9YHrOvYaWnwiN+X
	MuD0hIKtbXcK8TcO/pYQTiBWiw==
X-Google-Smtp-Source: ABdhPJy3NFC2kUkTNxqWKI6qiKJxCtyA1gsKiCV6Jbmzr9/IeK2EcqmxoZLatMqG5OdltJaaPExS0Q==
X-Received: by 2002:ac2:4c15:0:b0:479:cb6:f8da with SMTP id t21-20020ac24c15000000b004790cb6f8damr2115184lfq.484.1654153778084;
        Thu, 02 Jun 2022 00:09:38 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id d25-20020a056512369900b0047255d21114sm870218lfs.67.2022.06.02.00.09.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 00:09:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [RFC PATCH v3 29/30] phy: qcom-qmp-pcie-msm8996: use bulk reset_control API
Date: Thu,  2 Jun 2022 10:09:08 +0300
Message-Id: <20220602070909.1666068-30-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
References: <20220602070909.1666068-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_000938_623752_0827B35E 
X-CRM114-Status: GOOD (  14.55  )
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

Switch qcom-qmp-pcie-msm8996 driver to use reset_control_bulk_assert /
_deassert functions rather than hardcoding the loops in the driver
itself.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 49 +++++++------------
 1 file changed, 18 insertions(+), 31 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 51da3a3a199e..48ea1de81d7c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -340,7 +340,7 @@ struct qcom_qmp {
 	struct device *dev;
 
 	struct clk_bulk_data *clks;
-	struct reset_control **resets;
+	struct reset_control_bulk_data *resets;
 	struct regulator_bulk_data *vregs;
 
 	struct qmp_phy **phys;
@@ -489,7 +489,7 @@ static int qcom_qmp_phy_pcie_msm8996_com_init(struct qmp_phy *qphy)
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *serdes = qphy->serdes;
-	int ret, i;
+	int ret;
 
 	mutex_lock(&qmp->phy_mutex);
 	if (qmp->init_count++) {
@@ -504,22 +504,16 @@ static int qcom_qmp_phy_pcie_msm8996_com_init(struct qmp_phy *qphy)
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
@@ -534,8 +528,7 @@ static int qcom_qmp_phy_pcie_msm8996_com_init(struct qmp_phy *qphy)
 	return 0;
 
 err_assert_reset:
-	while (++i < cfg->num_resets)
-		reset_control_assert(qmp->resets[i]);
+	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 err_disable_regulators:
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 err_unlock:
@@ -549,7 +542,6 @@ static int qcom_qmp_phy_pcie_msm8996_com_exit(struct qmp_phy *qphy)
 	struct qcom_qmp *qmp = qphy->qmp;
 	const struct qmp_phy_cfg *cfg = qphy->cfg;
 	void __iomem *serdes = qphy->serdes;
-	int i = cfg->num_resets;
 
 	mutex_lock(&qmp->phy_mutex);
 	if (--qmp->init_count) {
@@ -564,8 +556,7 @@ static int qcom_qmp_phy_pcie_msm8996_com_exit(struct qmp_phy *qphy)
 	qphy_setbits(serdes, cfg->regs[QPHY_COM_POWER_DOWN_CONTROL],
 		     SW_PWRDN);
 
-	while (--i >= 0)
-		reset_control_assert(qmp->resets[i]);
+	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
 	clk_bulk_disable_unprepare(cfg->num_clks, qmp->clks);
 
@@ -769,23 +760,19 @@ static int qcom_qmp_phy_pcie_msm8996_reset_init(struct device *dev, const struct
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
