Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8707C47DA9
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jan 2024 14:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGagjaCbjRgMqvdvr/bJC4UnoN2xwCcwnAZUfTVIAeE=; b=Ig7IkGGwJUL893
	YBVue0jOb2gLCgmSFMvKa7P2YhqJwGPCWSTshqZG1PqjhHjCBzMqwkmUg5sNiStUDqfUghsGMVZz3
	syQqTdkPZhz2PnLBCkEGPQ2DrPFBS/2QvCskhK0TjaOQHMY3mq+hPeP9wrPVUB6AJSnvMc0w43dGC
	iAE9AV7V2lcmnoO7PybZC0JsTiMaNcHDnNLyZ3xlnxVDXhtnVXMgghHA03rR/As6Rg0hQwlA0Vm40
	2E8vs6tirFp5wXfwCNcyrw2Y1ZY45S5KYBntBY0SwPbvkGUrC4Yua2dgMc8lVrx65tOYaipt/X3i4
	N/wuQ8B8P3/QUMQ4Dktg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Ww-00Gr93-1V;
	Wed, 17 Jan 2024 14:04:34 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ6Wq-00Gr0g-39
	for linux-phy@lists.infradead.org;
	Wed, 17 Jan 2024 14:04:31 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2cd04078ebeso112647451fa.1
        for <linux-phy@lists.infradead.org>; Wed, 17 Jan 2024 06:04:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705500266; x=1706105066; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=72k1xLJVwiMJbLRb7ZUUcy6cJZtX/coZxcCHHlFdCmQ=;
        b=Y334PTKqzIuUbWhRBn7IZSO99cQ0BYtSxC0yZsc5AlUL8tlUjOZjTi6Hp5Aamd+BHm
         h5oSPRT+RBXK68q6RggzkSQRrR2B1MajyuX83kkrOqCzK0D36q5+a32BUVbocAq0U60Y
         bquTwhtGA2YLRUg/EASpcSkwe5lQSk519CFsxA3ubQaZzE4PPdnqJ08gqbSbzUpCdmz6
         WVHj1yfL3pXlyJZiceJZqnYczUV2LVEZKKkCFdQ6447PXGjHTXXqoEM09fou5zMyE09k
         YcvPs37+XoVV3cgGzobMzDtVfNt2eYYkchXs7aTAEUgOPajjTWfPkPl95QYQb25Bi62t
         fc+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705500266; x=1706105066;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=72k1xLJVwiMJbLRb7ZUUcy6cJZtX/coZxcCHHlFdCmQ=;
        b=iJWMlbN//eqdvqb78GTUyZGT/2yyRrypgoQspUh6E9tsDFPe1mHByWfnyVL3swCRrA
         H0AWtCx5Ihum8M7Er+f0oaJXG+IBbWB0vG828Dk+gbEAlWbpmDpI+JLNMhyMhF47icZR
         f6yFfJaARtHQtD0c9hcO9XwWxtPOA9NNdvfpAMGnUNp1yibfTJ+HOyVYjgfrYxxRNMly
         zAKRL40Az5HQdCJrYLLN9hE/XSzgxwx3VroS66IKIv0JPWDWXLnmmafdEcs9YGClxwZg
         n/h6xurrfon5gqQ7j3NSB5a8IqZzxUEd9v4KXR2R10nWxrTvbDO+snZJHNIpk/2BRpXi
         /ZYA==
X-Gm-Message-State: AOJu0YzGl8xzkD5YW2IdS6xrEVyq2+frVYEn/2iNn/NO0hKns9cDDkQ9
	fJC8j3HSR34IkXtub9z3DSBniuJmuxUwHHUt7gPXFVU55rpGT6ntSHTjnx7ds4ewaX+JSmSdWLf
	jzOE=
X-Google-Smtp-Source: AGHT+IF4LwyCoukcpgt8rgqEw0LpkrX/Ucil34MzXMX67x66tM4HWKETBO/i4geX6cAeJ32JTkl5UQ==
X-Received: by 2002:a19:2d4d:0:b0:50e:7e45:4e43 with SMTP id t13-20020a192d4d000000b0050e7e454e43mr586156lft.15.1705500266641;
        Wed, 17 Jan 2024 06:04:26 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y29-20020a19915d000000b0050ec7a26420sm269711lfj.204.2024.01.17.06.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 06:04:26 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 16:04:24 +0200
Subject: [PATCH v2 3/6] phy: qcom: qmp-usbc: handle CLAMP register in a
 correct way
MIME-Version: 1.0
Message-Id: <20240117-usbc-phy-vls-clamp-v2-3-a950c223f10f@linaro.org>
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=5055;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=XQ5Pv7+enL8CAcnblULFpJMoVjMYx0Ov7jzzVvGDtFw=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ+rye+kxLw8d6ZKJDiu35KtJPjCHr2pR9MUNjQn3P1za+
 mJanl1kJ6MxCwMjF4OsmCKLT0HL1JhNyWEfdkythxnEygQyhYGLUwAmsr2Mg6E5VXfJ8sz3dfNU
 nvRGTpaVy3L+4mfk81ekrLCEcyLj71+/1zz0qPm/Q0ZGpI3t8534bROcrLvtUk4lpXPc3Tb3rPT
 +Q+Jsp8oDPqxq/vJirkd/ty87ryKT2ZqavlllzzhWrZa01xd5vexq6kMLjRTPkgS/sOqufFuLXi
 lhzYsZlgd/m4TP9Fmo+qNrUmR/63O149oyC+5Lsjdvf6iVNS0kd+ZGaefjS2Q+rL2ZdTh5svDF6
 vUT1sqdfMgr/2+PTK2zTXNsivli5qnzX7TpW0z7pG2nZz+7mXeGxoF0HS3FrvY1U1oPM9lJ8jvo
 u57jfnur5MynOdGHOwWzFDwOGSTfqQytuDhH8EKabGs9AA==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_060429_040230_8A0A1D94 
X-CRM114-Status: GOOD (  20.17  )
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

The QMP USB PHYs on msm8998, qcm2290 and some other platforms don't have
the PCS_MISC_CLAMP_ENABLE register. Instead they need to toggle the
register in the TCSR space. Make the new phy-qcom-qmp-usbc driver
correctly handle the clamp register.

Fixes: a51969fafc82 ("phy: qcom-qmp: Add QMP V3 USB3 PHY support for msm8998")
Fixes: 8abe5e778b2c ("phy: qcom-qmp: Add QCM2290 USB3 PHY support")
Cc: Jeffrey Hugo <quic_jhugo@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 48 ++++++++++++++++++++++++--------
 1 file changed, 37 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 214cf4203de4..3a4b4849db0f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -10,11 +10,13 @@
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/kernel.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
 #include <linux/slab.h>
@@ -56,9 +58,6 @@
 /* QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR register bits */
 #define IRQ_CLEAR				BIT(0)
 
-/* QPHY_V3_PCS_MISC_CLAMP_ENABLE register bits */
-#define CLAMP_EN				BIT(0) /* enables i/o clamp_n */
-
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
 struct qmp_phy_init_tbl {
@@ -94,7 +93,6 @@ enum qphy_reg_layout {
 	QPHY_PCS_AUTONOMOUS_MODE_CTRL,
 	QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	QPHY_PCS_POWER_DOWN_CONTROL,
-	QPHY_PCS_MISC_CLAMP_ENABLE,
 	/* Keep last to ensure regs_layout arrays are properly initialized */
 	QPHY_LAYOUT_SIZE
 };
@@ -106,7 +104,6 @@ static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
 	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_POWER_DOWN_CONTROL,
-	[QPHY_PCS_MISC_CLAMP_ENABLE]	= QPHY_V3_PCS_MISC_CLAMP_ENABLE,
 };
 
 static const unsigned int qmp_v3_usb3phy_regs_layout_qcm2290[QPHY_LAYOUT_SIZE] = {
@@ -369,6 +366,9 @@ struct qmp_usbc {
 	void __iomem *tx2;
 	void __iomem *rx2;
 
+	struct regmap *tcsr_map;
+	u32 vls_clamp_reg;
+
 	struct clk *pipe_clk;
 	struct clk_bulk_data *clks;
 	int num_clks;
@@ -691,7 +691,6 @@ static void qmp_usbc_enable_autonomous_mode(struct qmp_usbc *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
-	void __iomem *pcs_misc = qmp->pcs_misc;
 	u32 intr_mask;
 
 	if (qmp->mode == PHY_MODE_USB_HOST_SS ||
@@ -712,19 +711,18 @@ static void qmp_usbc_enable_autonomous_mode(struct qmp_usbc *qmp)
 	qphy_setbits(pcs, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL], intr_mask);
 
 	/* Enable i/o clamp_n for autonomous mode */
-	if (pcs_misc && cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE])
-		qphy_clrbits(pcs_misc, cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE], CLAMP_EN);
+	if (qmp->tcsr_map && qmp->vls_clamp_reg)
+		regmap_write(qmp->tcsr_map, qmp->vls_clamp_reg, 1);
 }
 
 static void qmp_usbc_disable_autonomous_mode(struct qmp_usbc *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	void __iomem *pcs = qmp->pcs;
-	void __iomem *pcs_misc = qmp->pcs_misc;
 
 	/* Disable i/o clamp_n on resume for normal mode */
-	if (pcs_misc && cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE])
-		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_MISC_CLAMP_ENABLE], CLAMP_EN);
+	if (qmp->tcsr_map && qmp->vls_clamp_reg)
+		regmap_write(qmp->tcsr_map, qmp->vls_clamp_reg, 0);
 
 	qphy_clrbits(pcs, cfg->regs[QPHY_PCS_AUTONOMOUS_MODE_CTRL],
 		     ARCVR_DTCT_EN | ARCVR_DTCT_EVENT_SEL | ALFPS_DTCT_EN);
@@ -1063,6 +1061,30 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 	return 0;
 }
 
+static int qmp_usbc_parse_vls_clamp(struct qmp_usbc *qmp)
+{
+	struct of_phandle_args tcsr_args;
+	struct device *dev = qmp->dev;
+	int ret;
+
+	/*  for backwards compatibility ignore if there is no property */
+	ret = of_parse_phandle_with_fixed_args(dev->of_node, "qcom,tcsr-reg", 1, 0,
+					       &tcsr_args);
+	if (ret == -ENOENT)
+		return 0;
+	else if (ret < 0)
+		return dev_err_probe(dev, ret, "Failed to parse qcom,tcsr-reg\n");
+
+	qmp->tcsr_map = syscon_node_to_regmap(tcsr_args.np);
+	of_node_put(tcsr_args.np);
+	if (IS_ERR(qmp->tcsr_map))
+		return PTR_ERR(qmp->tcsr_map);
+
+	qmp->vls_clamp_reg = tcsr_args.args[0];
+
+	return 0;
+}
+
 static int qmp_usbc_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -1093,6 +1115,10 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	ret = qmp_usbc_parse_vls_clamp(qmp);
+	if (ret)
+		return ret;
+
 	/* Check for legacy binding with child node. */
 	np = of_get_child_by_name(dev->of_node, "phy");
 	if (np) {

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
