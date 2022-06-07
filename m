Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86AB2C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jun 2022 22:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoJT9N5i9PGNEk3UqoXYrO0J8R/VtzjjmL3io5Bweyo=; b=d0yuYDtVNlkXjl
	D4bjq8nfkI2qF/1v0TaYk9ai5h0DsRvMTCipoXJGoDhJPI+TGe4Ly+eMNGfSHXke236mjbLKfWpR7
	ep4nG0R2Vmmcr3AJ1CjrWiORh6MBQtsHDh03d1Gvkjrjd1VhObf82xzTt152qAbSm0Z//aL8OFyUW
	dAaa1CPkF5N0j+QnmuA93hOqiLVgSh7XESJYEkE5OZVMaydgsQTijtAK323gAOuXsKVC94b+S6nxd
	mx5vySAnUOiMQDOxC6Lu7d8U5XYCb/x8h43uK7yBhskkUIqnm0EbIwHuy8s/MobT1w2WA4Anm+nbD
	oN2Gt05/Bm5tJb/NcbqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhsJ-009uVg-Op; Tue, 07 Jun 2022 22:40:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyhsI-009uUV-9n
	for linux-phy@bombadil.infradead.org; Tue, 07 Jun 2022 22:40:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fF4LijbDfT4JefOzp7UdYAr+EfQ5/5blmMbjsXFHank=; b=Bffcxjmy/MrCwvXOCjRLSesy8b
	ai4k2Dk9cI7fvGs8XTW7q17PMZyNEvlhYQEgOPwVcDVXVWq/hWmcTQWWZx01gdbPmMbnVgF6dGULc
	FPM4DdlpIM0+3EuyxLg/g7uAvZE8FEo1T/rdanJXS/PCvYvWh6b9wHbUaXzvuGnpe9QYQBbvnypv8
	MdGrqnYtFxEfO3DycJWNRAAuvk/L/fHbCnotyNapj2xa7BXggFKtrBCpyolJJLS3fNHs/KTxp8VnA
	Qs1TMri5KR9IxxOekri/DmlXq9yPoi/vLcsAQu0ZE6xUPNRpijt5cE3TzWcBgtgazQRZDUPC8beSQ
	zQYT0ZqA==;
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nygog-005pnL-3H
	for linux-phy@lists.infradead.org; Tue, 07 Jun 2022 21:32:53 +0000
Received: by mail-lj1-x22d.google.com with SMTP id s13so20646906ljd.4
        for <linux-phy@lists.infradead.org>; Tue, 07 Jun 2022 14:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fF4LijbDfT4JefOzp7UdYAr+EfQ5/5blmMbjsXFHank=;
        b=NzKE7qkr8gsr/JL7rFgPpeulg+CPzyuP+hY6oa709bKQ++KIdK4fUhE2LIL+mnyxUa
         D6mVy/+r5k49UN02ZeQLXPmf7vapIERQfwwuhK6Jga3COW0mwzZbzYG+pYaHW0KbG+xS
         uJcmiR6679vZUunpZWEz4k4JyosPTnhPm/lEkBeXweEodeDsJ0KCak9xAeXUBSI4b7QM
         mtTAKQ0fCtGY5/ulYgQHXXJykPvq6MKm2EYHUr89HaH+b0G5NZdakXT9XUmA1eF92k1G
         GYZQfC4z3eXu40mF70KL3RdZavDj9peZ/7mJiRIkoa4IDobsuBguBjyHu5G5VigPqWF+
         N+dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fF4LijbDfT4JefOzp7UdYAr+EfQ5/5blmMbjsXFHank=;
        b=M3lMbnmxo8O6XemsdeRVOBQv2DV1ES/1MHZGO5gZEgTSuRV11Qg5cS6Um0d/O2yeVQ
         qOD+1rlZxT7UPMWQ4IRLqh3Oypwlw5JwTuzhiYv8yEuAOuAv4JprqqSZkN4pDe8Q3IhN
         NzDqztNuuS9zFwDufsZfWQedqRwcXcYhFCfIhZaXuf6sOFMJaPzTJgAaHmlwH5E2OyDb
         PlId/WNOO/MZNA4oXMcu4cwNwdj6za8PusFYaXjOwXbueL+sDrM2Cd2NLiOd470r+n88
         gOIVZhAPQ93sH9rh2+XfLIWHfuR5wd9CxpOl5JsdX8npj+ArkrcEeT+NPY1Rcao7gEqC
         mr4Q==
X-Gm-Message-State: AOAM533UohZDIbsy+0EmZf/xXZjH51qkP7KrRcuQKgwVJFPDG2+kxy+u
	JE8JD0qXlGHjqGpblAQyKptNUg==
X-Google-Smtp-Source: ABdhPJzAVAqqy6N+Lvbykyd5AuatgMAfK0/3UNTxy+Tx+koXIo1iO57kMjjoIpRRNCJxtRB2P/aLdQ==
X-Received: by 2002:a2e:881a:0:b0:255:7c2c:46d8 with SMTP id x26-20020a2e881a000000b002557c2c46d8mr13961393ljh.364.1654637562750;
        Tue, 07 Jun 2022 14:32:42 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g23-20020ac24d97000000b0047255d21153sm3411343lfe.130.2022.06.07.14.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:32:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 29/30] phy: qcom-qmp-pcie-msm8996: use bulk reset_control API
Date: Wed,  8 Jun 2022 00:32:02 +0300
Message-Id: <20220607213203.2819885-30-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
References: <20220607213203.2819885-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_223246_820715_FDD48E04 
X-CRM114-Status: GOOD (  15.04  )
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

Acked-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Tested-by: Bjorn Andersson <bjorn.andersson@linaro.org> # UFS, PCIe and USB on SC8180X
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
